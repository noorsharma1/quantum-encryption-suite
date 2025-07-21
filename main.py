import argparse
from engine.analyzer import scan_directory
from reporting.json_writer import write_json
#from reporting.pdf_writer import write_pdf
from reporting.xlsx_writer import write_xlsx

parser = argparse.ArgumentParser(description="Quantum Encryption Scanner")
parser.add_argument("--path", required=True, help="Directory to scan")
parser.add_argument("--rule-set", default="all", choices=["rsa", "aes", "ecc", "all"], help="Rule set to apply")
parser.add_argument("--report", default="json", choices=["json", "pdf", "xlsx"], help="Output report format")
parser.add_argument("--scan-binaries", action="store_true", help="Include binary files in scan")

args = parser.parse_args()

results = scan_directory(args.path, args.rule_set, scan_binaries=args.scan_binaries)

if args.report == "json":
    write_json(results, "scan_report.json")
elif args.report == "pdf":
    write_pdf(results, "scan_report.pdf")
elif args.report == "xlsx":
    write_xlsx(results, "scan_report.xlsx")

print(f"Scan completed. Results saved as scan_report.{args.report}")
