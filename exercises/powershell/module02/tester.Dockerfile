# For x86_64 (Intel/AMD) chips
FROM mcr.microsoft.com/powershell:latest AS amd64
# For macOS (Silicon chips)
FROM mcr.microsoft.com/powershell:mariner-2.0-arm64 AS arm64

# Docker's built-in ARG variable is used to pass the target architecture
ARG TARGETARCH

# Choose the correct base image based on the architecture
FROM ${TARGETARCH} AS final

# Create working directories
WORKDIR /app/tests

# Copy the student's scripts and the test scripts into the container
COPY exercises/ /app/exercises/
COPY tests/ /app/tests/

# Install Pester (a unit testing framework for PowerShell)
RUN pwsh -Command "Install-Module -Name Pester -Force -SkipPublisherCheck"

# Set the entry point to PowerShell
ENTRYPOINT ["pwsh"]