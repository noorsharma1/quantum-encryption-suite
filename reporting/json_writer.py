import json

def write_json(results, output_file="scan_report.json"):
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(results, f, indent=4)
        print(f"[+] JSON report written to {output_file}")
    except Exception as e:
        print(f"[!] Failed to write JSON report: {e}")
