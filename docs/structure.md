# 📁 Project Directory Structure — Quantum-Aware Encryption Scanner & PQ Encryptor Suite

This document describes the architecture and purpose of each directory and file in the project. This structure is optimized for enterprise-scale cryptographic scanning, risk classification, post-quantum encryption support, and DevSecOps integrations.

---

## 🔹 Root-Level Structure

| Path             | Purpose |
|------------------|---------|
| `main.py`        | Unified CLI entry point to invoke scans or services |
| `requirements.txt` | Python dependencies |
| `Dockerfile`     | Docker-based deployment environment |
| `README.md`      | High-level project overview (not in tree view here) |

---

## 🔹 Core Functional Modules

### `core/` – Central Scanning and Risk Analysis Engine
- `engine.py` – Scan orchestrator
- `risk_analyzer.py` – Evaluates quantum safety and crypto strength
- `rule_loader.py` – Loads, parses, and validates rule definitions
- `result_collector.py` – Aggregates, structures, and prepares results

---

## 🔹 Rules and Detection

### `detectors/` – Language-Specific Crypto Detectors
- `base.py` – Abstract class for all detectors
- `python/` – Python-specific detection logic
- `java/` – Java-specific detection logic
- `javascript/` – JS/TS-specific logic

### `engine/rules/` – Raw Rule Files
- YAML or JSON formatted detection rules for various algorithms and patterns

---

## 🔹 CLI Interface

### `cli/`
- `cli_main.py` – Handles user input, flags, paths, and CLI command dispatch

### `bin/`
- Shell wrappers, install scripts, CLI aliases, etc.

---

## 🔹 Reporting and Output

### `reporting/`
- `json_writer.py` – Outputs structured scan data in JSON
- `html_writer.py` – Outputs readable HTML reports
- `export_manager.py` – Dispatches output to destinations (stdout, file, API)

### `output/`
- Final reports, logs, and export artifacts

---

## 🔹 Post-Quantum Cryptography Engine (Phase 2)

### `pqc/`
- `kyber.py` – KEM (encryption) support
- `dilithium.py` – Signature support
- `utils.py` – Shared crypto helpers

---

## 🔹 DevSecOps and Cloud Integrations

### `integrations/`
- `github/`, `gitlab/` – CI/CD hooks
- `aws_kms/`, `vault/` – Key management backends
- `splunk/` – Log and threat event streaming

---

## 🔹 API Server (Optional REST Layer)

### `api/`
- `app.py` – FastAPI/Flask app entry
- `routes/` – API endpoints
- `schemas/` – Pydantic models for validation

---

## 🔹 Configs and Documentation

### `configs/`
- Scanning thresholds, environment configs

### `docs/`
- Developer notes, API documentation, rule schema specs, etc.

---

## 🔹 Testing

### `tests/`
- `unit/` – Component-level tests
- `integration/` – Multi-component test flows
- `e2e/` – Full flow test scenarios
- `fixtures/` – Static test files and input samples

---

## 🔹 Utilities

### `utils/`
- `file_utils.py` – File loading, saving, normalization
- `log.py` – Logging helpers
- `system_info.py` – Environment introspection

---

## ✅ Summary

This structure is designed to:
- Enable modular development
- Scale to multiple scanners, languages, and environments
- Support both CLI and API use cases
- Integrate with enterprise DevSecOps, KMS, and compliance workflows

