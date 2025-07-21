"""
Test Script for Kyber512 Keypair Generation via pybind11-wrapped oqs_bindings
"""

import oqs_bindings

def main():
    try:
        public_key, private_key = oqs_bindings.generate_kyber_keypair()
        print("✅ Public Key Length:", len(public_key))
        print("✅ Private Key Length:", len(private_key))
    except Exception as e:
        print("❌ Error during key generation:", str(e))

if __name__ == "__main__":
    main()

