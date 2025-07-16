from engine.rule_loader import load_rules

rules = load_rules()
for r in rules:
    print("🔍 Loaded Rule:", r['id'], "-", r['name'])
