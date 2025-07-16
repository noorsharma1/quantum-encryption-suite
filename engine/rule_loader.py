import os
import yaml

def load_rules(rule_dir=None):
    rules = []
    base_dir = rule_dir or os.path.join(os.path.dirname(__file__), '..', 'data', 'rules')

    for filename in os.listdir(base_dir):
        if filename.endswith('.yaml') or filename.endswith('.yml'):
            full_path = os.path.join(base_dir, filename)
            try:
                with open(full_path, 'r') as f:
                    rule = yaml.safe_load(f)
                    rules.append(rule)
            except yaml.YAMLError as e:
                print(f"[!] Error reading {filename}: {e}")
            except Exception as e:
                print(f"[!] General error with {filename}: {e}")
    
    return rules
