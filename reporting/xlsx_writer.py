from openpyxl import Workbook

def write_xlsx(results, filename='scan_report.xlsx'):
    wb = Workbook()
    ws = wb.active
    ws.title = "Scan Results"

    headers = ['File', 'Rule ID', 'Rule Name', 'Severity', 'Description']
    ws.append(headers)

    for item in results:
        ws.append([
            item['file'],
            item['rule_id'],
            item['rule_name'],
            item['severity'],
            item['description']
        ])

    wb.save(filename)
    print(f"[+] XLSX report written to {filename}")
