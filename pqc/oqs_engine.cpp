// ============================================================================
// File        : oqs_engine.cpp
// Description : Kyber512 keypair generator for PQC integration via pybind11
// Author      : Quantum-Aware Encryption Team
// Dependencies: liboqs (Open Quantum Safe)
// ============================================================================

#include "oqs_engine.h"
#include <oqs/kem.h>
#include <vector>
#include <stdexcept>

// ============================================================================
// Function    : generate_keypair
// Purpose     : Generates a Kyber512 public/private keypair
// Returns     : std::pair of byte vectors (public_key, private_key)
// ============================================================================
std::pair<std::vector<uint8_t>, std::vector<uint8_t>> generate_keypair() {
    // Initialize Kyber512 KEM object
    OQS_KEM *kem = OQS_KEM_new(OQS_KEM_alg_kyber_512);
    if (!kem) {
        throw std::runtime_error("[ERROR] Failed to initialize Kyber512 KEM.");
    }

    // Allocate byte buffers
    std::vector<uint8_t> public_key(kem->length_public_key);
    std::vector<uint8_t> private_key(kem->length_secret_key);

    // Generate keypair
    OQS_STATUS status = OQS_KEM_keypair(kem, public_key.data(), private_key.data());
    if (status != OQS_SUCCESS) {
        OQS_KEM_free(kem);
        throw std::runtime_error("[ERROR] Kyber512 keypair generation failed.");
    }

    // Cleanup
    OQS_KEM_free(kem);

    return { public_key, private_key };
}
