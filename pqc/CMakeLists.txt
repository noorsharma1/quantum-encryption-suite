# Minimum version of CMake required to use pybind11 and modern C++ features
cmake_minimum_required(VERSION 3.14)

# Name of the project
project(pqc_engine)

# Use modern C++17 standard for compatibility with pybind11 and liboqs
set(CMAKE_CXX_STANDARD 17)

# Find pybind11 — this is used to create Python bindings for C++ code
find_package(pybind11 REQUIRED)

# Use pkg-config to find liboqs (Post-Quantum Crypto library)
find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBOQS REQUIRED liboqs)

# Find OpenSSL — required for cryptographic randomness (RAND_poll)
find_package(OpenSSL REQUIRED)

# Include headers for liboqs and OpenSSL
include_directories(${LIBOQS_INCLUDE_DIRS})
include_directories(${OPENSSL_INCLUDE_DIR})

# Build a Python module called `oqs_bindings` from the C++ sources
pybind11_add_module(oqs_bindings bindings.cpp oqs_engine.cpp)

# Link with liboqs and OpenSSL to resolve all crypto dependencies
target_link_libraries(oqs_bindings PRIVATE ${LIBOQS_LIBRARIES} OpenSSL::Crypto)

