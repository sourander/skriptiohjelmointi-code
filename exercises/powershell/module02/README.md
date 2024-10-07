# Powershell : Moduuli 2

Ensimmäisessä moduulissa opettelimme käyttämään PowerShelliä **shellinä** - eli siis interaktiivisena komentotulkkina, joka ajaa meidän puolesta komentoja.

Skriptaaminen eroaa tuosta käytöstä käytännön tasolla siten, että: kyllästyt ajamaan samoja komentoja usein käsin, joten **päätät siirtää komennot tiedostoon**, jossa ne ajetaan kokonaisuutena. Tämä on pienimuotoista automaatiota. 🤖

Voit yhä käyttää edellisessä moduulissa luotua `my-pwsh-image`-imagea ajamaan skriptejä ad hoc -tyylillä, mutta sinun tarvitsee bindata (engl. bind mount) tiedostot sisään konttiin. Tämä neuvotaan tässä dokumentissa alempana.

## ⚠️ Ethän muuta tiedostoja! ⚠️

Varsinaiset skriptit (`exercises/*.PS1`) tulee kuitenkin olla ajettavissa siten, että automaattinen testeri voi tarkistaa niiden toimivuuden. **Et siis saa muun muassa nimetä tiedostoja tai funktioita uusiksi.**

## Moduulin harjoitukset

Kuten aiempikin Moduuli (engl. module), myös tämä koostuu useista harjoituksista (engl. exercise). 

1. Tee harjoitukset, jotka löytyvät `exercises/ex[##].PS1`-tiedostoista. 
2. Kun tehtävä on mielestäsi oikein tehty, **aja testit**
3. Hio tehtävää kunnes saat testin menemään läpi.
4. Lopulta merkkaa ne tehdyksi (korvaa: 🟪 => ✅). Muista päivittää myös oppimispäiväkirjaasi.

Kukin tehtävä on omassa PS1-tiedostossaan. Ne ovat listatut alla:

* 🟪 - [Harjoitus 1: Hello World](exercises/ex01.ps1) 
* 🟪 - [Harjoitus 2: TODO](exercises/ex02.ps1) 

## Harjoitusten ajaminen käsin

Huomaa, että voit ajaa yhä harjoituksia käsin, vaikka automaattinen tarkistaja on olemassa. Tämä voi auttaa esimerkiksi debuggaamisessa. Tämä hoituu Dockerin avulla:

```bash
# Change to the correct directory
cd exercises/powershell/module02/

# Bash
docker container run --rm -v "${PWD}/exercises:/app" my-pwsh-image
```

## Harjoitusten testaaminen

Komentoja varten sinun tulee ajaa servicet, jotka on määritelty `docker-compose.yml`-tiedostossa. Voit ajaa ne seuraavasti:

```bash
# Change to the correct directory
cd exercises/powershell/module02/

# Run everything defined in docker-compose.yml
docker compose up -d --build
```

Komennot luovat `test-results/results.html`-tiedoston, jota voit tarkastella selaimella. Tiedosto päivittyy aina kun ajat yllä olevat testit uusiksi.
