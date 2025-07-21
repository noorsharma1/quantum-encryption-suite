// ------------------------------------------------------------
// File: pybind_wrapper.cpp
// Purpose: Exposes C++ PQC Kyber keygen logic to Python using pybind11
// Author: [Your Name or Team]
// ------------------------------------------------------------

#include <pybind11/pybind11.h>   // pybind11 headers for Python/C++ integration
#include "oqs_engine.cpp"        // Our Kyber C++ engine function

namespace py = pybind11;

// ------------------------------------------------------------
// PYBIND11_MODULE: Defines the Python module name and bindings
// This compiles into a .so file importable in Python as "pqc_kyber"
// ------------------------------------------------------------
PYBIND11_MODULE(pqc_kyber, m) {
    m.doc() = "Python wrapper for PQC Kyber keypair generator using liboqs";
    m.def("generate_kyber_keypair", &generate_kyber_keypair,
          "Generate a Kyber512 post-quantum keypair (public/secret)");
}
