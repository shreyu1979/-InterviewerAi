const fs = require("fs");
const path = require("path");
const { execFile } = require("child_process");
const { promisify } = require("util");
const pdfParse = require("pdf-parse");
const { createWorker } = require("tesseract.js");

const execFileAsync = promisify(execFile);

const POPPLER_PATH =
    "C:\\Users\\admin\\Downloads\\poppler\\poppler-26.09.0\\Library\\bin\\pdftoppm.exe";

const extractTextFromPDF = async (filePath) => {
    try {
        console.log("Starting PDF text extraction...");

        const dataBuffer = fs.readFileSync(filePath);

        // -----------------------------------
        // STEP 1: Try normal PDF text extraction
        // -----------------------------------
        const data = await pdfParse(dataBuffer);

        const normalText = data.text ? data.text.trim() : "";

        console.log(
            "Normal PDF extraction length:",
            normalText.length
        );

        // If enough text was extracted, use it
        if (normalText.length > 50) {
            console.log("Normal PDF extraction successful.");
            return normalText;
        }

        // -----------------------------------
        // STEP 2: PDF text extraction failed
        // Use Poppler to convert PDF → PNG
        // -----------------------------------
        console.log(
            "Normal extraction too short. Starting OCR..."
        );

        const tempPrefix = path.join(
            path.dirname(filePath),
            `ocr-${Date.now()}`
        );

        console.log("Rendering PDF pages...");

        await execFileAsync(POPPLER_PATH, [
            "-png",
            "-r",
            "200",
            filePath,
            tempPrefix
        ]);

        // -----------------------------------
        // STEP 3: Find generated PNG pages
        // -----------------------------------
        const uploadDir = path.dirname(filePath);

        const prefixName = path.basename(tempPrefix);

        const imageFiles = fs
            .readdirSync(uploadDir)
            .filter(
                (file) =>
                    file.startsWith(prefixName) &&
                    file.endsWith(".png")
            )
            .sort();

        console.log(
            "OCR images generated:",
            imageFiles
        );

        if (imageFiles.length === 0) {
            throw new Error(
                "Poppler did not generate any PNG pages."
            );
        }

        // -----------------------------------
        // STEP 4: Start Tesseract OCR
        // -----------------------------------
        console.log("Starting Tesseract OCR...");

        const worker = await createWorker("eng");

        let extractedText = "";

        for (const imageFile of imageFiles) {
            const imagePath = path.join(
                uploadDir,
                imageFile
            );

            console.log(
                "OCR processing:",
                imageFile
            );

            const result = await worker.recognize(
                imagePath
            );

            extractedText +=
                result.data.text + "\n";

            // Remove temporary PNG
            fs.unlinkSync(imagePath);
        }

        await worker.terminate();

        extractedText = extractedText.trim();

        console.log(
            "OCR extracted text length:",
            extractedText.length
        );

        if (!extractedText) {
            throw new Error(
                "OCR could not extract any text from the PDF."
            );
        }

        return extractedText;

    } catch (error) {
        console.error(
            "PDF text extraction error:",
            error.message
        );

        throw error;
    }
};

module.exports = extractTextFromPDF;