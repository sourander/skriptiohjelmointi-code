# Skriptiohjelmointi - Code


Tämä repositorio sisältää Skriptiohjelmointi-kurssin käytännön harjoitukset. Lisäksi kurssilla on YouTube-luentoja, joissa käydään läpi tämän repositorion käyttöä, oppimispäiväkirjan kirjoitukseen liittyvää ohjeistusta ja muita käytännön asioita. Kurssin toteutukseen kuuluu mitä varmimmin myös live-luentoja: näiden tarkoitus on tarjota tukea, vastauksia kysymyksiin ja mahdollisuus keskustella kurssin aiheista.

**HUOMIO 1**: Jos saavuit tänne repositorioon katsomatta ensimmäistä Youtube-videota, palaa askel taaksepäin ja **katso video ensin**! Videolla neuvotaan, mihin ja miten sinun kannattaa tämä projekti kloonata ja kuinka saat harjoitukset käyntiin.

**HUOMIO 2**: Jos sinulla on vaikeuksia, osallistu läsnäopetukseen ja kysy apua. Läsnäopetus on nimenomaan tukea varten, jotta voimme yhdessä ratkaista ongelmat ja varmistaa, että kaikki pääsevät eteenpäin.

## Esivaatimukset

* Docker
    * Docker Desktop (for Windows and Mac) 
    * ... or Docker Engine (for Linux)

### Huomio macOS-käyttäjille

Microsoftin konttirepositoriossa *(MCR, Microsoft Container Registry)* oleva Powershell-image (`mcr.microsoft.com/powershell:latest`) ei tule kunnolla toimeen Apple Silicon -prosessoreiden *(M1, M2 tai M3)* kanssa.

Jos kyseinen Macbook on sinun ainut omistamasi kone, tee Powershell-harjoitukset koulun koneilla. Tähän toimii esimerkiksi Linux-luokan koneet, joissa on kaikissa Docker, tai jonkin Windows-luokan kone, jossa on Docker Desktop asennettuna. Vaihtoehtoisesti voit luoda virtuaalikoneen DClab-ympäristöön (VMware vSphere) ja asentaa sinne Dockerin.

Tämä huomio on kirjoitettu syyskuussa 2024 ja voi olla vanhentunut. Mikäli epäröit, kokeile ajaa ensimmäinen harjoitus, ja katso tuleeko lokiin virheitä, jotka muistuttavat tätä:

```log
➜  skriptiohjelmointi-code git:(main) ✗ cd exercises/powershell/ex01/
➜  ex01 git:(main) ✗ docker compose up -d
➜  ex01 git:(main) ✗ docker compose logs -f
powershell-service  | PowerShell 7.4.2
powershell-service  | PS /app> 
powershell-service  | An error has occurred that was not properly handled. Additional information is shown below. The PowerShell process will exit.
^[[20;23R^[[20;23Rpowershell-service  | Unhandled exception. System.NullReferenceException: Object reference not set to an instance of an object.
powershell-service  |    at CallSite.Target(Closure, CallSite, Object, Pipe, ExecutionContext)
```


## Repositorion rakenne

The exercises are divided into folders, each containing a `README.md` file that describes the exercise and how to run it. The exercises are designed to be run in a Docker container, so you don't need to install anything else than Docker.

For example, the first exercise for `powershell` is located in the `ex01` folder. The `README.md` file for that exercise contains instructions on how to run the exercise. 

Full path to the `README.md` file is: 

* Exercise 01 of Powershell: `exercises/powershell/ex01/README.md`
* Exercise 02 of Powershell: `exercises/powershell/ex02/README.md`
* Exercise 01 of Python: `exercises/python/ex01/README.md`
* Exercise 01 of Jenkins: `exercises/jenkins/ex01/README.md`
* ... and so on.

Harjoitukset ovat jaettu hakemistoihin siten, että kunkin harjoituksen hakemisto sisältää `README.md`-tiedoston, joka kuvaa harjoituksen ja kertoo, mitä tehtäviä kyseisessä harjoituksessa on tarkoitus tehdä. Yhteen harjoitukseen kuuluu siis useita tehtäviä. 

Polku on työkalusta riippumatta samankaltainen. Huomaa, että repositorio voi sisältää harjoituksia, jotka eivät kuulu juuri siihen kurssin toteutukseen, jossa olet mukana. Tee tehtävät, jotka opettaja on määrännyt tehtäväksi juuri tässä toteutuksessa.

Esimerkkejä poluista:

* Powershellin ensimmäinen harjoitus: `exercises/powershell/ex01/README.md`
* Powershellin toinen harjoitus: `exercises/powershell/ex02/README.md`
* Pythonin ensimmäinen harjoitus: `exercises/python/ex01/README.md`
* Jenkinsin ensimmäinen harjoitus: `exercises/jenkins/ex01/README.md`
* ... ja niin edelleen.

