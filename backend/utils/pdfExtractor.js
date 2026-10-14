const fs = require("fs");
const pdfjsLib = require("pdfjs-dist/legacy/build/pdf.mjs");
const { createCanvas } = require("@napi-rs/canvas");
const { createWorker } = require("tesseract.js");

const extractTextFromPDF = async (filePath) => {
    let worker;
    let pdf;

    try {
        console.log("Starting PDF text extraction...");

        const dataBuffer = fs.readFileSync(filePath);

        // STEP 1: Load PDF using PDF.js
        pdf = await pdfjsLib.getDocument({
            data: new Uint8Array(dataBuffer),
            useSystemFonts: true
        }).promise;

        console.log("PDF pages:", pdf.numPages);

        // STEP 2: Extract normal PDF text
        let normalText = "";

        for (let i = 1; i <= pdf.numPages; i++) {
            const page = await pdf.getPage(i);
            const content = await page.getTextContent();

            normalText += content.items
                .map(item => item.str || "")
                .join(" ") + "\n";
        }

        normalText = normalText.trim();

        console.log(
            "Normal PDF extraction length:",
            normalText.length
        );

        if (normalText.length > 50) {
            console.log("Normal PDF extraction successful.");
            return normalText;
        }

        // STEP 3: Scanned PDF - Start OCR
        console.log("Normal extraction too short. Starting OCR...");

        worker = await createWorker("eng");

        let extractedText = "";

        for (let i = 1; i <= pdf.numPages; i++) {
            console.log("Rendering PDF page:", i);

            const page = await pdf.getPage(i);

            const viewport = page.getViewport({
                scale: 2
            });

            const canvas = createCanvas(
                Math.ceil(viewport.width),
                Math.ceil(viewport.height)
            );

            const context = canvas.getContext("2d");

            await page.render({
                canvasContext: context,
                viewport: viewport
            }).promise;

            // Convert rendered page to PNG
            const imageBuffer = canvas.toBuffer("image/png");

            console.log("Running OCR on page:", i);

            const result = await worker.recognize(imageBuffer);

            extractedText += result.data.text + "\n";
        }

        extractedText = extractedText.trim();

        console.log(
            "OCR extracted text length:",
            extractedText.length
        );

        if (!extractedText) {
            throw new Error(
                "OCR could not extract text from the PDF."
            );
        }

        return extractedText;

    } catch (error) {
        console.error("PDF extraction error:", error);
        throw error;

    } finally {
        if (worker) {
            await worker.terminate();
        }

        if (pdf) {
            await pdf.destroy();
        }
    }
};

module.exports = extractTextFromPDF;