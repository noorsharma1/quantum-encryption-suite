from fpdf import FPDF
from datetime import datetime
import os

class PDFReport(FPDF):
    def header(self):
        self.set_font("Arial", "B", 14)
        self.cell(0, 10, "Quantum Encryption Scanner Report", ln=True, align="C")
        self.set_font("Arial", "", 10)
        self.cell(0, 10, f"Scan Date: {datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S UTC')}", ln=True, align="C")
        self.ln(10)

    def add_detection(self, detection):
        self.set_font("Arial", "B", 12)
        self.cell(0, 10, f"[{detection['severity'].upper()}] {detection['rule_name']} ({detection['rule_id']})", ln=True)
        self.set_font("Arial", "", 11)
        self.multi_cell(0, 8, f"File: {detection['file']}\nDescription: {detection['description']}")
        self.ln(5)

def write_pdf_report(detections, output_path="scan_report.pdf"):
    pdf = PDFReport()
    pdf.add_page()

    if not detections:
        pdf.set_font("Arial", "I", 12)
        pdf.cell(0, 10, "No detections found.", ln=True)
    else:
        for detection in detections:
            pdf.add_detection(detection)

    try:
        pdf.output(output_path)
        print(f"[+] PDF report written to: {os.path.abspath(output_path)}")
    except Exception as e:
        print(f"[!] Failed to write PDF: {e}")
