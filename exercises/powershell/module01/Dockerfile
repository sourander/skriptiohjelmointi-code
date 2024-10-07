# For x86_64 (Intel/AMD) chips
FROM mcr.microsoft.com/powershell:latest AS amd64
# For macOS (Silicon chips)
FROM mcr.microsoft.com/powershell:mariner-2.0-arm64 AS arm64

# Docker's built-in ARG variable is used to pass the target architecture
ARG TARGETARCH

# Choose the correct base image based on the architecture
FROM ${TARGETARCH} AS final

# Create a working directory
WORKDIR /skriptiohjelmointi

# Copy the contents of src into /app/
COPY files-for-docker/ /docker-automation/

# Run the setup script - this is currently a placeholder for future use
# that would be used to set up the environment for student activities
# (e.g. downloading files, cloning repos, creating files, etc.)
RUN pwsh /docker-automation/setup_that_docker_runs.ps1

# Update the help
# RUN pwsh -Command "Update-Help"

# Set the entry point to PowerShell
ENTRYPOINT ["pwsh"]
