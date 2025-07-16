from engine.analyzer import scan_directory

results = scan_directory('test_samples')  # test_samples folder bana lena

for r in results:
    print("🚨 Match Found:")
    print(f"File      : {r['file']}")
    print(f"Rule      : {r['rule_id']} - {r['rule_name']}")
    print(f"Severity  : {r['severity']}")
    print(f"Details   : {r['description']}")
    print("-" * 40)
from output.pdf_writer import write_pdf_report
write_pdf_report(results)
