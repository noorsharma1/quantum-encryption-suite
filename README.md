# 🔐 quantum-encryption-suite

An enterprise-grade, modular security toolkit for detecting and remediating cryptographic vulnerabilities — now with post-quantum encryption support.

---

## 📦 What It Does

- 🔎 Scans source code and configuration files for:
  - Weak encryption (RSA < 2048, ECC < 256)
  - Deprecated algorithms
  - Hardcoded secrets (future)
- 🔐 Integrates Post-Quantum Cryptography:
  - Kyber512 key generation (via liboqs)
  - pybind11 C++/Python bridge
  - Future support for Dilithium, hybrid encryption
- 📄 Outputs compliance-ready reports (PDF, Excel)
- 🖥️ CLI, API, and GUI interfaces (modular support)

---

## 🗂️ Project Structure

```bash
quantum_encryption_scanner/
├── engine/            # Core scanning logic
├── rules/             # Detection rule definitions (regex-based)
├── pqc/               # Post-Quantum C++ engine with bindings
├── reporting/         # PDF, Excel report generator
├── cli/, api/, gui/   # Interface layers (WIP)
├── docs/              # Technical docs, architecture, etc.
├── tests/             # Unit + integration tests
├── progress_tracker.md  # Live development task board
├── requirements.txt   # Python dependencies
└── README.md          # You’re here
# quantum-encryption-suite
