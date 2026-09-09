const fs = require("fs");
const pdfParse = require("pdf-parse");

const extractTextFromPDF = async (filePath) => {
    try {
        const dataBuffer = fs.readFileSync(filePath);

        const data = await pdfParse(dataBuffer);

        return data.text;
    } catch (error) {
        console.error(
            "PDF text extraction error:",
            error.message
        );

        throw error;
    }
};

module.exports = extractTextFromPDF;