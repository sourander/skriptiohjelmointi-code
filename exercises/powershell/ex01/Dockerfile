# For x86_64 (Intel/AMD) chips
FROM mcr.microsoft.com/powershell:latest AS amd64
# For macOS (Silicon chips)
FROM mcr.microsoft.com/powershell:mariner-2.0-arm64 AS arm64

# Docker's built-in ARG variable is used to pass the target architecture
ARG TARGETARCH

# Choose the correct base image based on the architecture
FROM ${TARGETARCH} AS final

# Create a working directory
WORKDIR /app

# Copy the contents of src into /app/
COPY src/ /app/src/

# Run the setup script
RUN pwsh /app/src/setup_for_script.ps1

# Update the help
RUN pwsh -Command "Update-Help"

# Set the entry point to PowerShell
ENTRYPOINT ["pwsh"]
