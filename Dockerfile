# Use an official, minimal Python 3.12 image as the base
FROM python:3.12-slim

# Environment variables to improve performance and reduce issues
ENV PYTHONDONTWRITEBYTECODE=1  # Prevents Python from creating .pyc files
ENV PYTHONUNBUFFERED=1         # Ensures output appears in real time (no buffering)

# Install system-level packages needed to compile and run the app
RUN apt-get update && apt-get install -y \
    build-essential \          # Tools for compiling C/C++ code
    cmake \                    # Required to build the C++ bindings
    python3-dev \              # Python headers (for compiling extensions)
    libssl-dev \               # SSL libraries (may be needed by your app)
    git \                      # Just in case you pull code or dependencies from Git
    && rm -rf /var/lib/apt/lists/*  # Clean up to reduce image size

# Set the working directory where all commands will run
WORKDIR /app

# Copy all files from your project directory into the container
COPY . .

# Go into the pqc/build directory to compile the C++ code
WORKDIR /app/pqc/build

# Use CMake to configure and build your C++ bindings (output: .so file)
RUN cmake .. && make

# Return to root app folder for Python setup
WORKDIR /app

# Upgrade pip to latest version (prevents errors)
RUN pip install --upgrade pip

# Install Python packages listed in requirements.txt
RUN pip install -r requirements.txt

# The default command that will run when you start the container
# This assumes your app is started with main.py — change if needed
CMD ["python", "main.py"]
