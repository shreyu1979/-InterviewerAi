
const fs = require("fs");
const pdfjsLib = require("pdfjs-dist/legacy/build/pdf.mjs");
const { createCanvas } = require("@napi-rs/canvas");
const { createWorker } = require("tesseract.js");

const extractTextFromPDF = async (filePath) => {
    let worker = null;
    let pdf = null;
    let loadingTask = null;

    try {
        console.log("=================================");
        console.log("STARTING RESUME PDF EXTRACTION");
        console.log("=================================");

        // Check whether the uploaded PDF exists
        if (!fs.existsSync(filePath)) {
            throw new Error("Uploaded PDF file does not exist.");
        }

        // Read PDF file
        const dataBuffer = fs.readFileSync(filePath);

        if (!dataBuffer || dataBuffer.length === 0) {
            throw new Error("Uploaded PDF file is empty.");
        }

        console.log("PDF file size:", dataBuffer.length);
        console.log("Loading PDF...");

        // Create PDF.js loading task
        loadingTask = pdfjsLib.getDocument({
            data: new Uint8Array(dataBuffer),
            useSystemFonts: true
        });

        // Get PDF document
        pdf = await loadingTask.promise;

        console.log("PDF loaded successfully.");
        console.log("Total PDF pages:", pdf.numPages);

        // =================================
        // STEP 1: NORMAL TEXT EXTRACTION
        // =================================

        console.log("Starting normal PDF text extraction...");

        let normalText = "";

        for (let i = 1; i <= pdf.numPages; i++) {
            console.log(`Extracting text from page ${i}...`);

            const page = await pdf.getPage(i);
            const content = await page.getTextContent();

            const pageText = content.items
                .map(item => item.str || "")
                .join(" ");

            normalText += pageText + "\n";
        }

        normalText = normalText.trim();

        console.log(
            "Normal PDF extraction length:",
            normalText.length
        );

        // If PDF contains readable text, return it
        if (normalText.length > 50) {
            console.log("Normal PDF text extraction successful.");

            return normalText;
        }

        // =================================
        // STEP 2: OCR FOR SCANNED PDFs
        // =================================

        console.log(
            "Normal extraction too short. Starting OCR..."
        );

        worker = await createWorker("eng");

        let extractedText = "";

        for (let i = 1; i <= pdf.numPages; i++) {
            console.log(`Rendering PDF page ${i}...`);

            const page = await pdf.getPage(i);

            // Increase scale for better OCR accuracy
            const viewport = page.getViewport({
                scale: 2
            });

            const canvas = createCanvas(
                Math.ceil(viewport.width),
                Math.ceil(viewport.height)
            );

            const context = canvas.getContext("2d");

            // Render PDF page into canvas
            await page.render({
                canvasContext: context,
                viewport: viewport
            }).promise;

            // Convert rendered page into PNG
            const imageBuffer = canvas.toBuffer("image/png");

            console.log(`Running OCR on page ${i}...`);

            // Extract text using Tesseract
            const result = await worker.recognize(imageBuffer);

            extractedText += result.data.text + "\n";

            console.log(`OCR completed for page ${i}.`);
        }

        extractedText = extractedText.trim();

        console.log(
            "OCR extracted text length:",
            extractedText.length
        );

        if (!extractedText || extractedText.length < 10) {
            throw new Error(
                "Could not extract readable text from this PDF. Please upload a clearer resume."
            );
        }

        console.log("OCR extraction successful.");

        return extractedText;

    } catch (error) {
        console.error("=================================");
        console.error("PDF EXTRACTION ERROR");
        console.error(error);
        console.error("=================================");

        throw error;

    } finally {
        // Terminate OCR worker
        if (worker) {
            try {
                await worker.terminate();
                console.log("OCR worker terminated.");
            } catch (cleanupError) {
                console.error(
                    "OCR worker cleanup error:",
                    cleanupError.message
                );
            }
        }

        // Correct PDF.js cleanup:
        // destroy() belongs to the loading task, not the PDF document.
        if (loadingTask) {
            try {
                await loadingTask.destroy();
                console.log("PDF loading task destroyed.");
            } catch (cleanupError) {
                console.error(
                    "PDF cleanup error:",
                    cleanupError.message
                );
            }
        }
    }
};

module.exports = extractTextFromPDF;
