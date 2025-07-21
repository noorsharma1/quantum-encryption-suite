#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include "oqs_engine.h"

namespace py = pybind11;

PYBIND11_MODULE(oqs_bindings, m) {
    m.doc() = "Python bindings for Kyber512 key generation via liboqs";
    m.def("generate_kyber_keypair", &generate_keypair, "Generates a Kyber512 keypair and returns (pubkey, privkey)");
}
