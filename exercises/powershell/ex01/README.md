# Powershell test

## Harjoitus 1: PowerShell ja Docker

Ensimmäinen harjoitus käsittelee Powershell-ympäristöön tutustumista siten, että sitä ajetaan Docker-kontissa. Tavoitteena on saada Powershell käyntiin Docker-kontissa, ajaa yksinkertaisia komentoja (kuten `Get-Date`) ja ajaa valmiiksi tehty skripti. Myöhemmissä harjoituksissa oletetaan, että ymmärrät tämän tunnin tärkeät aiheet, kuten sen, että Docker-kontit ovat ei-pysyiä luonteeltaan, ja että image pitää buildata uusiksi, jos olet tehnyt siihen liittyviin tiedostoihin muutoksia.

Kokeile seuraavia komentoja ja selvitä, mitä ne tekevät. Esittele avainlöydökset oppimispäiväkirjassasi.

## Harjoituksen tehtävät

On suositeltavaa lisätä otsikkoon ✅-emoji perään, kun olet tehnyt kyseisen tehtävän. Näin pysyt paremmin kartalla, missä vaiheessa tehtäviä olet menossa. 

### Tehtävä: Build 'n' Run 🟪

Buildaa Docker image ja kiinnity siihen alla näkyvillä komennoilla. Huomaa, että `$`-merkki ei osa osa komentoa vaan on paikalla korostamassa, että olemme Linuxin Bash-shellissä ja ajamme komentoa tavallisen käyttäjän oikeuksin. Samat komennot toimivat myös Windowsissa (Command Prompt tai Git Bash tai Microsoft PowerShell).

```bash
# Varmista, että olet oikeassa hakemistossa!
$ cd exercises/powershell/ex01

# Buildx
$ docker buildx build --tag my-pwsh-image .

# Run interactive
$ docker container run -it --rm my-pwsh-image
```

Nyt sinulla pitäisi näkyä PowerShell prompt, joka näyttää tältä:

```powershell
# Prompt näyttää tältä PowerShellissä
PS /app>

# Kokeile tulostaa outputtiin Hello World
PS /app> Write-Host "Hello World!"

# Pääset pois exitillä tai CTRL+D pikanäppäimellä.
PS /app> exit
```

Kopioi ja liitä "Check Mark Button"-emoji ylempää tämän tehtävän otsikon loppuun, violetin merkin tilalle. Näin muistat tehneesi tehtävän.

### Tehtävä: Luo tiedosto 🟪

Yhdistä uusiksi konttiin, jossa ajetaan aiemmin rakentamasi image. Tämä onnistuu jatkossa aina samalla komennolla, ja toimii mistä tahansa hakemistosta, koska image on lisättynä sinun Dockerin images-listaan (kokeile: `docker image ls`).

```bash
docker container run -it --rm my-pwsh-image
```

Komennon ajamalla yhdistät taas kerran PowerShell-terminaaliin, jota ajetaan kontin sisällä. Kokeile luoda tiedosto ja tarkistaa sen sisältö seuraavalla tavalla:

```powershell
# Kirjoita tämä komento
PS /app> "Hi all" | Out-File -FilePath hi.txt
```

Huomaa komentoa kirjoittaessa, että voit hyödyntää Tab-täydennystä. Aloita kirjoittamalla esimerkiksi `Ou` ja paina tabia. Powershell täydentää komentoa siihen asti, kunnes vastaan tulee usea komento, jotka jatkavat saman prefixin: `Out-`. Paina tabia uusiksi. Saat listan kaikista komennoista, jotka alkavat sanalla `Out-`, joista yksi on `Out-File`. Huomaat, että täydennys pelaa myös optioneiden kanssa. Kun olet päässyt kohtaan `"Hi all" | Out-File -Fi` ja painat tabia, se täydentää sanan `-FileHost` sinun puolestasi.

Kokeile tulostaa tiedoston sisältö:

```powershell
# Tulosta
PS /app> Get-Content ./hi.txt
```

PowerShelliin pitäisi palautua tiedoston sisältö eli `Hi all`.

Lopuksi poistu PowerShellistä ja merkitse tämä tehtävä tehdyksi.

### Tehtävä: Tiedostojen pysyvyys 🟪

Muistithan varmasti poistua PowerShellistä edellisen tehtävän lopuksi? Jos et, kirjoita `exit`. 

Luo uusi kontti, joka hyödyntää imagea, käyttämällä aiemmin tuttua komentoa, joka alkaa sanoilla `docker container run`.

Yritä tulostaa aiemmin luomasi tiedoston sisältö:

```powershell
PS /app> Get-Content ./hi.txt
```

Huomaat, että tiedostoa ei ole olemassa. Docker-kontit ovat siis lähtökohtaisesti ei-pysyviä (engl. non-persistent). Kun tuhoat kontin, myös data tuhoutuu. Kun luot uuden kontin, se luodaan imagen perusteella.

Tulosta sen sijaan toisen tiedoston sisältö:

```powershell
PS /app> Get-Content ./test.txt
```

Huomaat, että ruudulle tulostuu `Hello World!`. Voit nyt poistua kontin Powershell-ympäristöstä. Tutustu host-koneella olevaan tiedostoihin:

* `exercises/powershell/ex01/src/setup_for_script.ps1`
* `exercises/powershell/ex01/Dockerfile`

Kun ajat komennon, joka alkaa `docker buildx` ja päättyy sanaan `.`, Docker etsii sinun nykyisestä hakemistostasi (`.` eli *tämä hakemisto*) tiedostoa nimeltään Dockerfile. Image rakennetaan kyseisen tiedoston pohjalta.

Etsi Dockerfilestä rivit, jotka alkavat seuraavilla sanoilla:

* COPY
* RUN

Huomaat, että **imagea luodessa** kyseisen imagen sisään kopioidaan host-koneen hakemisto `./src/` kaikkine sisältöineen. Kontin sisällä sen polku on jatkossa `/app`. Tämän jälkeen kyseisessä hakemistossa ajetaan tiedosto `setup_for_script.ps1`, joka luo tiedoston `test.txt`.

### Harjoitus: Muokkaa startup-skriptiä 🟪

Tee seuraavat vaiheet:

1. Muokkaa `setup_for_script.ps1`-tiedostoa siten, että tiedosto `hello.txt` sisältää jatkossa jotakin muuta, kuten `Terveisiä oppilaalta Etunimi Sukunimi`.
2. Aja uusi kontti (`docker container run ...`)
3. Tarkista, onko tiedoston sisältö muuttunut haluamaksesi.
4. Poistu kontista (`PS /app> exit`)
5. Rakenna uusi image (`docker buildx ...`)
6. Tarkista, onko tiedoston sisältö muuttunut haluamaksesi.

Kirjaa löytämäsi opit talteen oppimispäiväkirjaan. Jatkossa sinulla pitäisi olla ymmärrys, että Docker image luodaan sillä hetkellä, kun `docker buildx`-komento ajetaan. Komento `docker container run` käyttää imagea juuri sellaisenaan kuin se on viimeksi luotu. Jos haluat muokata jotakin tehtävää valmistelevaa skriptiä, sinun tulee rakentaa uusi image.