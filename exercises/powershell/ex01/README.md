# Powershell test

## Usage

```bash
# Up
docker compose up -d

# Connect
docker exec -it powershell-service bash

# Run
cd /app
pwsh my_script.ps1
```

## Harjoitus 1

Ensimmäinen harjoitus käsittelee Powershell-ympäristöön tutustumista. Tavoitteena on saada Powershell käyntiin Docker-kontissa, ajaa yksinkertaisia komentoja (kuten `Get-Date`) ja ajaa valmiiksi tehty skripti.

Kokeile seuraavia komentoja ja selvitä, mitä ne tekevät. Esittele avainlöydökset oppimispäiväkirjassasi.

## Harjoituksen tehtävät

### Docker Lokit

Käynnistä Docker-kontti ja tarkastele lokit. Selvitä, mikä skripti lisää lokiin rivin `[INFO] Running the setup_for_script.ps1 script`, missä se ajetaan ja miten se on siirretty konttiin.

```bash
# Käynnistä Docker Compose projekti
docker compose up -d

# Tarkastele lokit
docker logs powershell-service
```