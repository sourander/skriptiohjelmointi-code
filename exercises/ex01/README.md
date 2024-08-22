# Powershell test

## Usage

```bash
# Up
docker compose up -d

# Connect
docker exec -it powershell-service bash

# Run
cd /app
pwsh test.ps1
```

## MEMO

I have some serious problems running the `amd64` image (`:latest`) even with Rosetta 2 installed on the machine. Also, using the `mcr.microsoft.com/powershell:mariner-2.0-arm64` doesn't fix it.

Maybe I should do this material on a Linux machine. This is something I need to try.