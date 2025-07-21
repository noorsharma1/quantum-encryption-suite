import os
import yaml

RULE_PATHS = {
    'rsa': 'data/rules/rules_rsa.yaml',
    'aes': 'data/rules/rules_aes.yaml',
    'ecc': 'data/rules/rules_ecc.yaml',
}

def load_rules(rule_set='all'):
    rules = []

    if rule_set == 'all':
        selected_paths = RULE_PATHS.values()
    else:
        selected_paths = [RULE_PATHS.get(rule_set)]

    for path in selected_paths:
        if path and os.path.exists(path):
            with open(path, 'r') as f:
                loaded = yaml.safe_load(f)
                if loaded:
                    rules.extend(loaded)
        else:
            print(f"[!] Rule file not found: {path}")

    return rules
