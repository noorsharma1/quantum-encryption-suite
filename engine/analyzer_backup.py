mport os
import re
from engine.rule_loader import load_rules

ALLOWED_EXTENSIONS = ['.py', '.js', '.pem', '.conf', '.txt']

def is_text_file(file_path):
    try:
        with open(file_path, 'rb') as f:
            chunk = f.read(2048)
            if b'\0' in chunk:
                return False
        return True
    except:
        return False

def scan_file(filepath, rules):
    detections = []

    try:
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as file:
            content = file.read()
            for rule in rules:
                pattern = rule.get('pattern')
                if not pattern:
                    continue
                if re.search(pattern, content):
                    detections.append({
                        'file': filepath,
                        'rule_id': rule.get('id'),
                        'rule_name': rule.get('name'),
                        'severity': rule.get('severity'),
                        'description': rule.get('description')
                    })
    except Exception as e:
        print(f"[!] Error reading {filepath}: {e}")

    return detections
def scan_directory(directory_path, scan_binaries=False):

    rules = load_rules()
    results = []

    for root, dirs, files in os.walk(directory_path):
        for file in files:
            file_path = os.path.join(root, file)

            # Skip binary or unsupported file types
           if not scan_binaries and not is_text_file(file_path):
    continue
if not any(file_path.endswith(ext) for ext in ALLOWED_EXTENSIONS):
                continue

def scan_directory(directory_path, rule_set='all', scan_binaries=False):
    rules = load_rules(rule_set)
    results = []

    for root, dirs, files in os.walk(directory_path):
        for file in files:
            file_path = os.path.join(root, file)

            # Skip binary files unless --scan-binaries is enabled
            if not scan_binaries and not is_text_file(file_path):
                continue

            # Skip non-targeted extensions unless scanning binaries
            if not scan_binaries and not any(file_path.endswith(ext) for ext in ALLOWED_EXTENSIONS):
                continue

            file_detections = scan_file(file_path, rules)
            results.extend(file_detections)

    return results
            file_detections = scan_file(file_path, rules)
            results.extend(file_detections)

    return results

