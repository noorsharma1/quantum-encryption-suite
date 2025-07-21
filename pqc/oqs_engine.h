#ifndef OQS_ENGINE_H
#define OQS_ENGINE_H

#include <vector>
#include <utility>
#include <cstdint>

/**
 * @brief Generates a Kyber512 keypair using liboqs.
 * @return A pair: (public_key, private_key)
 */
std::pair<std::vector<uint8_t>, std::vector<uint8_t>> generate_keypair();

#endif  // OQS_ENGINE_H
