# For x86_64 (Intel/AMD) chips
FROM mcr.microsoft.com/powershell:latest AS amd64

# Create working directories
WORKDIR /app/tests

# Copy the student's scripts and the test scripts into the container
COPY src/ /app/src/
COPY tests/ /app/tests/

# Install Pester (a unit testing framework for PowerShell)
RUN pwsh -Command "Install-Module -Name Pester -Force -SkipPublisherCheck"

# RUN pswh -Command "Import-Module Pester"

# Set the entry point to PowerShell
ENTRYPOINT ["pwsh"]