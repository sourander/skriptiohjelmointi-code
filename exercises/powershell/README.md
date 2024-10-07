# PowerShell -osio

Tervetuloa kurssin PowerShell-osioon!

## Moduulit

PowerShell -osio koostuu kolmesta moduulista, jotka ovat:

1. [Moduuli 1](module01/README.md) - Powershellin perusteet ja Dockerin perusteet
2. [Moduuli 2](module02/README.md) - Powershellin skriptaus
3. [Moduuli 3](module03/README.md) - Powershell ja Azure VM harjoitus

**Moduulissa 1** käytämme PowerShell 7.x:ää Docker-kontin sisällä aivan tyypillisen shellin (vtr. Bash, Command Prompt, Zsh, ...) tavoin.

**Moduulissa 2** siirrymme käyttämään PowerShelliä skriptauskieletä. Tämä tarkoittaa sitä, että kirjoitamme komentoja tiedostoon, joka ajaa ne puolestamme. Tämä on hyödyllistä, kun haluamme ajaa samat komennot usein, tai kun haluamme jakaa komentoja muille, tai välttyä kirjoitusvirheiltä tai muilta inhimillisiltä virheiltä.

**Moduulissa 3** käytämme PowerShelliä yhdessä Azure VM:n kanssa. Tämä tarkoittaa sitä, että voimme ajaa komentoja etänä, ja hallita virtuaalikonetta ilman, että meidän tarvitsee kirjautua siihen sisään

## 5.x vs 7.x

Jos olet natiivissa Windowsissa, voisit ajaa PowerShelliä ilman Dockeria, ja sinun koneellasi onkin tässä tapauksessa asennettuna jokin PowerShell - mutta yleensä vanhantyyppinen Windows PowerShell. On siis olemassa kaksi tuotetta, joiden nimi on lähes identtinen, mutta joista jälkimmäinen on avoimen lähdekoodin ja toimii kaikilla alustoilla. Nämä ovat:

1. Windows PowerShell 5.x
2. PowerShell 7.x

## Docker

Huomaa, että jälkimmäinen on uusi ja se on saatavilla myös Linuxille ja macOS:lle. Tämän takia voimme ajaa sitä myös Docker-kontissa, jotka ovat lähtökohtaisesti aina Linux-pohjaisia. Tämän kirjoitushetkellä (syyskuu 2024) PowerShell 7.2 on `current LTS-versio` (Long Term Support). Emme käytä tällä kurssilla suljetun lähdekoodin Windows PowerShelliä, koska se ei ole yhteensopiva Linuxin kanssa.

Kaikki tämän osion tehtävät ajetaan siis Docker-kontissa, joka käyttää PowerShell 7.4 -imagea. Tämä on saatavilla Microsoftin konttirepositoriossa (MCR, Microsoft Container Registry) osoitteessa `mcr.microsoft.com/powershell:latest`. 

## Deprekoituneet komennot

Mikäli versio päivittyy, tämä kurssi pitää päivittää vastaamaan uusinta versiota. Mikäli `powershell:latest` sisältää 7.4-versiota tuoreemman, ja löydät tämän dokumentaation päivittämisen tarpeelliseksi, tee pull request ja päivitä dokumentaatio vastaamaan uusinta versiota. Tai ota yhteys opettajaan.