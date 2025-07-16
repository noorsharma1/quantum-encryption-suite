import json
import os
from datetime import datetime

def write_json_report(detections, output_path="scan_report.json"):
    report = {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "total_detections": len(detections),
        "results": detections
    }

    try:
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(report, f, indent=4)
        print(f"[+] Report written to: {os.path.abspath(output_path)}")
    except Exception as e:
        print(f"[!] Failed to write report: {e}")
