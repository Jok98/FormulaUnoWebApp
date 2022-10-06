-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema F1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema F1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `F1` DEFAULT CHARACTER SET utf8 ;
USE `F1` ;

-- -----------------------------------------------------
-- Table `F1`.`monoposto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`monoposto` (
  `id_vettura` VARCHAR(45) NOT NULL,
  `motore` VARCHAR(100) NOT NULL,
  `anno_produzione` INT NOT NULL,
  `foto_monoposto` VARCHAR(6000) NOT NULL,
  `foto_motore` VARCHAR(6000) NOT NULL,
  `storia` varchar(500) not null,
  PRIMARY KEY (`id_vettura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`scuderia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`scuderia` (
  `logo` VARCHAR(6000) NOT NULL,
  `nome_scuderia` VARCHAR(45) NOT NULL,
  `sito_web` VARCHAR(6000) NOT NULL,
  `team_principal` VARCHAR(45) NOT NULL,
  `storia` VARCHAR(6000) NOT NULL,
  `anno_esordio` INT NOT NULL,
  `numero_vittorie` INT NOT NULL,
  `primo_pilota` VARCHAR(45) NOT NULL,
  `secondo_pilota` VARCHAR(45) NOT NULL,
  `id_vettura` VARCHAR(45) NOT NULL,
  `nazionalita` varchar(45) not null,
  `icona` varchar(1000) not null,
  `direttore_tecnico` varchar(45) not null,
  `primo_mondiale` int not null,
  `bio_vettura` varchar(500) not null,
  `info` varchar(500) not null,
  `pole_positions` int not null,
  `numero_partecipazioni` int not null,
  PRIMARY KEY (`nome_scuderia`),
  INDEX `fk_Scuderia_Monoposto1_idx` (`id_vettura` ASC) VISIBLE,
  CONSTRAINT `fk_Scuderia_Monoposto1`
    FOREIGN KEY (`id_vettura`)
    REFERENCES `F1`.`monoposto` (`id_vettura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`pilota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`pilota` (
  `foto` VARCHAR(6000) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cognome` VARCHAR(45) NOT NULL,
  `data_nascita` DATE NOT NULL,
  `luogo_nascita` VARCHAR(45) NOT NULL,
  `nazionalita` VARCHAR(45) NOT NULL,
  `numero_pilota` INT NOT NULL,
  `profilo_social` VARCHAR(6000) NOT NULL,
  `biografia` VARCHAR(6000) NOT NULL,
  `titoli_mondiali` INT NOT NULL,
  `nome_scuderia` VARCHAR(45) NOT NULL,
  `bandiera` varchar(1000) not null,
  `foto_grande` varchar(45) not null,
  `foto_card` varchar(45) not null,
  `storia` varchar(400) not null,
  PRIMARY KEY (`numero_pilota`),
  INDEX `fk_Pilota_Scuderia1_idx` (`nome_scuderia` ASC) VISIBLE,
  CONSTRAINT `fk_Pilota_Scuderia1`
    FOREIGN KEY (`nome_scuderia`)
    REFERENCES `F1`.`scuderia` (`nome_scuderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`circuito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`circuito` (
  `foto_circuito` VARCHAR(6000) NOT NULL,
  `nome_circuito` VARCHAR(45) NOT NULL,
  `lunghezza` int NOT NULL,
  `numero_giri` INT NOT NULL,
  `citta` VARCHAR(45) NOT NULL,
  `nazione` VARCHAR(45) NOT NULL,
  `miglior_tempo` FLOAT NOT NULL,
  `pole_position` VARCHAR(45) NOT NULL,
  `vincitore` VARCHAR(45) NOT NULL,
  `indirizzo` varchar(100) not null,
  `sito_web` varchar(100) not null,
  `notizie` varchar(500) not null,
  `contatti` varchar(20) not null,
  `foto_orizzontale` varchar(100) not null,
  PRIMARY KEY (`nome_circuito`))
ENGINE = InnoDB;

/*
-- -----------------------------------------------------
-- Table `F1`.`Gara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`Gara` (
  `idGara` INT NOT NULL,
  `listaPiloti` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `grigliaDiPartenza` VARCHAR(45) NOT NULL,
  `numeroGiri` INT NOT NULL,
  `nomeCircuito` VARCHAR(45) NOT NULL,
  `pilotaNumero` INT NOT NULL,
  PRIMARY KEY (`idGara`),
  INDEX `fk_Gara_Circuito1_idx` (`nomeCircuito` ASC) VISIBLE,
  INDEX `fk_Gara_Pilota1_idx` (`pilotaNumero` ASC) VISIBLE,
  CONSTRAINT `fk_Gara_Circuito1`
    FOREIGN KEY (`nomeCircuito`)
    REFERENCES `F1`.`circuito` (`nome_circuito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gara_Pilota1`
    FOREIGN KEY (`pilotaNumero`)
    REFERENCES `F1`.`pilota` (`numero_pilota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`ClassificaPiloti`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`ClassificaPiloti` (
  `annoClassifica` VARCHAR(45) NOT NULL,
  `nomePilota` VARCHAR(45) NOT NULL,
  `posizione` INT NOT NULL,
  `numeroPilota` INT NOT NULL,
  `puntiPilota` INT NOT NULL,
  UNIQUE INDEX `anno_UNIQUE` (`annoClassifica` ASC) VISIBLE,
  PRIMARY KEY (`annoClassifica`),
  INDEX `fk_ClassificaPiloti_Pilota1_idx` (`numeroPilota` ASC) VISIBLE,
  CONSTRAINT `fk_ClassificaPiloti_Pilota1`
    FOREIGN KEY (`numeroPilota`)
    REFERENCES `F1`.`pilota` (`numero_pilota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`ClassificaCostruttori`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`ClassificaCostruttori` (
  `annoClassificaScuderia` VARCHAR(45) NOT NULL,
  `puntiScuderia` INT NOT NULL,
  `nomeScuderia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`annoClassificaScuderia`),
  UNIQUE INDEX `anno_UNIQUE` (`annoClassificaScuderia` ASC) VISIBLE,
  INDEX `fk_classificaCostruttori_Scuderia1_idx` (`nomeScuderia` ASC) VISIBLE,
  CONSTRAINT `fk_classificaCostruttori_Scuderia1`
    FOREIGN KEY (`nomeScuderia`)
    REFERENCES `F1`.`scuderia` (`nome_scuderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`ClassificaGara`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`ClassificaGara` (
  `numeroPilota` INT NOT NULL,
  `tempoPilota` FLOAT NOT NULL,
  `punteggioPilota` INT NOT NULL,
  `ordineArrivo` INT NOT NULL,
  `annoClassificaPiloti` VARCHAR(45) NOT NULL,
  `annoClassificaCostruttori` VARCHAR(45) NOT NULL,
  INDEX `fk_ClassificaGara_ClassificaPiloti1_idx` (`annoClassificaPiloti` ASC) VISIBLE,
  INDEX `fk_ClassificaGara_classificaCostruttori1_idx` (`annoClassificaCostruttori` ASC) VISIBLE,
  CONSTRAINT `fk_ClassificaGara_ClassificaPiloti1`
    FOREIGN KEY (`annoClassificaPiloti`)
    REFERENCES `F1`.`ClassificaPiloti` (`annoClassifica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ClassificaGara_classificaCostruttori1`
    FOREIGN KEY (`annoClassificaCostruttori`)
    REFERENCES `F1`.`ClassificaCostruttori` (`annoClassificaScuderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `F1`.`Admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `F1`.`Admin` (
  `userId` INT NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userId`))
ENGINE = InnoDB;*/


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Barhain International Circuit","5412","57","Sakhir","Gate 255 Gulf of Bahrain Avenue Umm Jidar","Barhain","131.447",
"https://i.imgur.com/I87gOUK.png","Max Verstappen","Lewis Hamilton", "https://it.wikipedia.org/wiki/Bahrain_International_Circuit", "Questo circuito ospita a partire dal 2004 il Gran Premio del Bahrain di Formula 1 e altre competizioni.
La realizzazione è stata affrettata per consentire di essere pronti per lo svolgimento del primo Gran Premio del Bahrain il 4 aprile 2004. La sua costruzione è costata nell'ordine dei 150 milioni di dollari su progetto dello studio dell'architetto tedesco Hermann Tilke", "+973-406444", "https://i.imgur.com/b7qjsy1.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Jeddah Street Circuit","6174","50","Jeddah","طريق الكورنيش،، الشاطئ","Arabia Saudita","130.734",
"https://i.imgur.com/THDGKmL.png","Lewis Hamilton","Lewis Hamilton", "https://it.wikipedia.org/wiki/Jeddah_Corniche_Circuit", "Il circuito di Gedda, il cui disegno è stato presentato il 18 marzo 2021, è percorribile con una velocità media, stimata tramite simulazioni, di 252,8 km/h — dietro solo all'autodromo di Monza, percorribile con una velocità media di 264,3 km/h — e si tratta del tracciato cittadino più veloce tra quelli su cui il campionato mondiale di Formula 1 ha corso e il secondo tracciato più lungo, con i suoi 6 174 m di lunghezza, dopo quello di Spa-Francorshamps (lungo 7 004 m), in Belgio.", " (61) 399258 7100", "https://i.imgur.com/gjrB7Xf.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Melbourne Grand Prix Circuit","5303","58","Melbourne","12 Aughtie Dr Albert Park VIC 3206","Australia","124.125",
"https://i.imgur.com/bIhwW7Z.png","Lewis Hamilton","Valtteri Bottas", "https://it.wikipedia.org/wiki/Circuito_Albert_Park", "In passato si sono avute diverse edizioni del Gran Premio d'Australia. Nel 1928 il Capitano Arthus Waite vinse la prima edizione, allora chiamata 100 miglia su strada. Le gare si svolsero a Philip Island, Lobethal, Bathurst, negli anni '50 all'interno dell'Albert Park, ma solo nel 1985 la manifestazione fu inserita nel calendario del Campionato del Mondo, con il primo vero Gran Premio organizzato ad Adelaide", "(37) 8 000 757", "https://i.imgur.com/xh4oN9X.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Autodromo Enzo e Dino Ferrari","4909","63","Imola","Piazza Ayrton Senna da Silva","Italia","115.484",
"https://i.imgur.com/t3mw43J.png","Valtteri Bottas","Max Verstappen", "https://it.wikipedia.org/wiki/Autodromo_Enzo_e_Dino_Ferrari", "L'Italia organizza due Gran Premi dal 1957. Le disposizioni della Formula Uno moderna però impongono che un paese possa organizzare una sola prova del campionato, eccezion fatta per il Gran Premio d'Europa o una seconda manifestazione in America. Così, dopo un primo esperimento nel 1979, l'Italia ottiene l'iscrizione in calendario del suo secondo Gran Premio, due anni più tardi, sotto l'identità della piccola Repubblica di San Marino", "(39) 0542 31444", "https://i.imgur.com/oCAa3Ls.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Miami international Autodrome","541","57","Miami","Hard Rock Stadium, Miami Gardens,","USA","134.240",
"https://i.imgur.com/UwiIetO.png","Max Verstappen","Max Verstappen", "https://it.wikipedia.org/wiki/Miami_International_Autodrome", "Il Miami International Autodrome è un circuito temporaneo, ma progettato per avere la sensazione di uno permanente. Situato nel complesso Hard Rock Stadium a Miami Gardens, sede dei Miami Dolphins della NFL, il circuito è il culmine di un processo di sviluppo che ha simulato non meno di 36 diversi layout prima di stabilire un emozionante giro di 19 curve che fornisce un'atmosfera da circuito stradale, non dissimile dall'Albert Park di Melbourne", "305-943-8000", "https://i.imgur.com/TsjlxKS.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit de Barcelona- Catalunya","4655","66","Barcellona","Carrer Mas Moreneta","Spagna","118.149",
"https://i.imgur.com/VsrZm74.png","Lewis Hamilton","Lewis Hamilton", "https://it.wikipedia.org/wiki/Circuito_di_Catalogna", "Il primo Gran Premio di Spagna si disputà nel 1951 sul tracciato cittadino di Pedralbes. Diciassette anni pià tardi le gare venivano disputate, alternativamente, sui circuiti di Jarama e Montjuich (quest'ultimo situato in un parco di Barcelona). In seguito la manifestazione fu organizzata a Jerez, prima del suo ritorno a Barcelona, dove attualmente viene disputato il Gran Premio", "(34)3 4955035", "https://i.imgur.com/gdBoTyL.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit de Monaco","3337","78","Montecarlo","Monaco","Monaco","112.909",
"https://i.imgur.com/hh4e0ZK.png","Charles Leclerc","Max Verstappen", "https://it.wikipedia.org/wiki/Autodromo_nazionale_di_Monza", "Il primo Gran Premio di Montecarlo si disputà nel 1929. Nel 1950, Monaco ospità la seconda prova del campionato. Ma à solo dopo il 1955 che la manifestazione assume una cadenza annuale, da allora, sempre inclusa in calendario. La corsa si sviluppa su di un circuito cittadino - il pià famoso del mondo - che attraversa il centro di Montecarlo e costeggia il mare lungo il porto", "(377) 93152600", "https://i.imgur.com/W2SgU1x.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Baku City Circuit","6003","51","Baku","9VF3+577 Zarifa Aliyeva","Azerbaijan","143.009",
"https://i.imgur.com/56Hvxhy.png","Valtteri Bottas","Valtteri Bottas", "https://it.wikipedia.org/wiki/Circuito_di_Baku", "Il circuito di Baku è stato presentato nell'ottobre del 2014 da Bernie Ecclestone e Azad Rahimov, ministro della gioventù e dello sport dell'Azerbaigian. Nonostante si sia parlato nel dicembre del 2013 di un possibile anticipo del Gran Premio alla stagione 2015 a causa di problemi contrattuali con gli organizzatori del Gran Premio di Corea, l'anno seguente la voce è stata smentita ed è stato confermata la stagione 2016 come debutto per il GP", "0", "https://i.imgur.com/QO1xUXk.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit Gilles Villeneuve","4361","70","Montreal","Parc Jean-Drapeau","Canada","113.078",
"https://i.imgur.com/kXbmGZK.png","Sebastian Vettel","Lewis Hamilton", "https://it.wikipedia.org/wiki/Circuito_di_Montréal", "In principio il Gran Premio del Canada si disputava sul circuito di Mosport Park, che fu alternato in seguito a quello di Mont Treblant (quest'ultimo fu poi escluso, quando gli alberi che circondavano il tracciato furono considerati troppo pericolosi). Il Gran Premio arriva a Montreal nel 1978, sul luogo che aveva ospitato l'Esposizione Universale del 1967 e parte dei Giochi Olimpici del 1976", "(1) 514 392 4731", "https://i.imgur.com/peXDz7Z.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Silverstone Circuit","5891","52","Silverstone","Towcester NN12 8TN","Gran Bretagna","127.097",
"https://i.imgur.com/TIW9fgC.png","Valtteri Bottas","Lewis Hamilton", "https://it.wikipedia.org/wiki/Circuito_di_Silverstone", "I primi Gran Premi furono organizzati in Gran Bretagna da Henry Segrave all'autodromo di Brooklands dopo le sue vittorie nel Gran Premio di Francia del 1923 e l'anno seguente nel Gran Premio di Spagna che accrebbero l'interesse nello sport. La prima edizione del Gran Premio di Gran Bretagna fu vinta dal team francese di Louis Wagner e Robert Sénéchal alla guida di una Delage 155B", "(44) 1327 857271", "https://i.imgur.com/wpX7lZM.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Red Bull Ring","4318","71","Spielberg","Red Bull Ring Str. 1 8724 Spielberg","Austria","105.619",
"https://i.imgur.com/0z3OqaI.png","Valtteri Bottas","Valtteri Bottas", "https://it.wikipedia.org/wiki/Red_Bull_Ring", "Il circuito che si trova nel cuore della Styria, una verde regione ricca di colline al centro dell'Austria, fu costruito tra il 1968 e il 1969 e fu sede del Gran Premio D'Austria dal 1970 al 1987. La lunghezza originale era di 5,9 Km, ma dopo i lavori iniziati alla fine del 1995 e completati nel giugno del 1996, la pista e' stata radicalmente modificata ed ha adesso uno sviluppo di 4,3 Km", "(43)1 7491687", "https://i.imgur.com/AzfyO7B.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit Paul Ricard","5842","53","Le Castellet","2760 Rte des Hauts du Camp","Francia","132.740",
"https://i.imgur.com/LD2NT0z.png","Lewis Hamilton","Lewis Hamilton", "https://it.wikipedia.org/wiki/Circuito_Paul_Ricard", "Durante i Gran Premi di Francia svolti sul circuito di Le Castellet, tutti i giornalisti della Formula 1 avevano preso l'abitudine di darsi appuntamento all'interno della Courbe de Signes per vedere quali piloti l'avessero percorsa in pieno senza decelerare neanche per una frazione di secondo e determinare così, di anno in anno, il pilota più veloce (oltre che più coraggioso) della massima categoria", "+33 (0)494 983 666", "https://i.imgur.com/AG9pldo.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Hungaroring","4381","70","Mogyrod","Hungaroring utca 10","Ungheria","116.627",
"https://i.imgur.com/L0QMYCj.png","Lewis Hamilton","Lewis Hamilton", "https://it.wikipedia.org/wiki/Hungaroring", "Si tratta di un complesso moderno, creato appositamente per la Formula 1. Da quando nel 1986 fu inserito nel calendario del campionato mondiale, il Gran Premio d'Ungheria si è sempre disputato sul circuito di Budapest, che quest'anno festeggia l'undicesima edizione", "(36) 1 28 444444", "https://i.imgur.com/l05dHA6.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit de Spa-Francorchamps","7004","44","Francorchamps","Rte du Circuit 55 4970 Stavelot","Belgio","146.286",
"https://i.imgur.com/1m0Tcpt.png","Charles Leclerc","Charles Leclerc", "https://it.wikipedia.org/wiki/Circuito_di_Spa-Francorchamps", "Il circuito di Spa-Francorchamps è il più lungo oggi in uso nel campionato del mondo di Formula Uno. L'impianto è stato predisposto per ospitare annualmente il Gran Premio del Belgio solo nel 1985. Il tracciato, che è anche uno dei più veloci, ha subito diverse modifiche nel 1994, dopo i tragici incidenti di Imola", "(32) 87 27 51 46", "https://i.imgur.com/DcZaWSl.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit Zandvoort","4252","72","Zandvoort","Burgemeester van Alphenstraat 108","Paesi Bassi","111.097",
"https://i.imgur.com/upUZCOV.png","Max Verstappen","Max Verstappen", "https://it.wikipedia.org/wiki/Circuito_di_Zandvoort", "Su questo circuito persero la vita Piers Courage nel 1970 e Roger Williamson nel 1973, quest'ultimo perito in un incendio seguito all'impatto contro le barriere installate a ridosso della pista proprio in vista della gara di quell'anno e ai quali gli organizzatori si erano sempre fermamente opposti, ritenendo più sicuro il sistema delle reti di arresto", "+31 (0)23 5 740 740", "https://i.imgur.com/pq2Si6o.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Autodromo Nazionale di Monza","5793","53","Monza","20900 Monza MB","Italia","121.046",
"https://i.imgur.com/ixrBvsS.png","Charles Leclerc","Charles Leclerc", "https://it.wikipedia.org/wiki/Autodromo_nazionale_di_Monza", "Il circuito originale fu costruito nel 1922, ma dopo diversi anni fu abbandonato in favore dell'attuale configurazione. Dopo il 1950, escludendo una sola edizione, il Gran Premio d'Italia si e' sempre disputato qui, in un ambiente che non ha eguali, con migliaia di tifosi in delirio per la Formula Uno e per la Ferrari", "02 782519-7745", "https://i.imgur.com/Zh7Wnjm.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Marina Bay Street Circuit","5065","61","Singapore","Marina Bay","Repubblica di Singapore","141.905",
"https://i.imgur.com/RdhK4zY.png","Charles Leclerc","Sebastian Vettel", "https://it.wikipedia.org/wiki/Singapore_Street_Circuit", "Secondo una leggenda malese, un principe di Sumatra si imbattà a Temasek in un leone - fatto ritenuto di buon auspicio - che lo spinse a fondare Singapura, che in sanscrito significa letteralmente città del leone", "+65 6738 6738", "https://i.imgur.com/vmiVCh2.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Suzuka International Racing Course","5807","53","Suzuka","7992 Inoucho Mie 510-0295","Giappone","130.983",
"https://i.imgur.com/17kfdVQ.png","Valtteri Bottas","Valtteri Bottas", "https://it.wikipedia.org/wiki/Circuito_di_Suzuka", "Il primo Gran Premio del Giappone fu disputato sul circuito del Fuji nel 1976. In quell'anno a vincere fu James Hunt, che divenne anche campione del mondo con la McLaren. Hunt vinse anche l'anno successivo, prima che la prova giapponese sparisse dal calendario della Formula Uno. Si dovette poi attendere diversi anni (dieci), affinche' il Giappone tornasse ad organizzare un Gran Premio annualmente, proprio su questa pista", "(81) 593 781111", "https://i.imgur.com/g259sDs.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Circuit of the Americas","5513","56","Austin","9201 Circuit of the Americas Blvd","USA","136.169",
"https://i.imgur.com/1DEHMZV.png","Valtteri Bottas","Valtteri Bottas", "https://it.wikipedia.org/wiki/Circuito_delle_Americhe", "Il Gran Premio è stato proposto a metà del 2010. Il circuito, costruito appositamente per ospitare una gara di Formula 1, è stato progettato dall'architetto tedesco Hermann Tilke autore di altri tracciati quali quello di Sepang in Malesia, quello di Manama in Bahrain, quello di Shanghai in Cina, quello di Istanbul in Turchia e quelli recenti di Korea a Yeongam nel 2010 e del circuito dell'India, nel 2011", "512-301-6600", "https://i.imgur.com/9A9BfzZ.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Autodromo Hernanos Rodriguez","4304","71","Città del Messico","Viad. Río de la Piedad S/n, Granjas México Iztacalco","Messico","11.774",
"https://i.imgur.com/zLir5Qz.png","Charles Leclerc","Lewis Hamilton", "https://it.wikipedia.org/wiki/Autodromo_Hermanos_Rodríguez", "Ha ospitato tutte le quindici edizioni del Gran Premio del Messico valide per il mondiale di Formula 1 tra il 1963 e il 1992. Fino al 1972 il suo nome era Magdalena Mixucha, poi venne intitolato alla memoria dei due piloti messicani Rodríguez, Ricardo e Pedro. Ricardo perse la vita durante la prima edizione del Gran Premio disputata, il 1º novembre 1962, non valida come prova del mondiale", "+52 55 5764 8499", "https://i.imgur.com/dRfsc8f.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Autodromo Jose Carlos Pace","4309","71","Interlagos","Av. Sen. Teotônio Vilela, 261","Brasile","110.540",
"https://i.imgur.com/z7ox8ML.png","Max Verstappen","Max Verstappen", "https://it.wikipedia.org/wiki/Circuito_di_Interlagos", "In principio, siamo nel 1940, il circuito di Interlagos era privato, ma negli anni '50 la proprietà si trasferì alla città, al Comitato per la Celebrazione del Centenario di San Paolo. Dei lavori previsti per il rimodernamento però, solo pochi furono eseguiti nel corso degli anni seguenti. Nel 1973, quando fu messo in regola con le norme internazionali, ospitò il Gran Premio", "(55) 21 5219911", "https://i.imgur.com/vIGTPy1.png");

INSERT INTO circuito(nome_circuito,lunghezza,numero_giri,citta,indirizzo,nazione,miglior_tempo,foto_circuito,pole_position,vincitore, sito_web, notizie, contatti, foto_orizzontale)
VALUES("Yas Marina Circuit","5554","58","Isola Yas","Yas Central Yas Marina Circuit Yas Island","Emirati Arabi","126.103",
"https://i.imgur.com/6S7iKJ1.png","Lewis Hamilton","Lewis Hamilton", "https://it.wikipedia.org/wiki/Circuito_di_Yas_Marina", "Il circuito è stato costruito dalla compagnia Aldar Properties, costruttrice anche del parco tematico sull'automobilismo, il Ferrari World, una marina, aree residenziali, un parco acquatico, nonché strutture alberghiere e di divertimento. Il circuito consta di ventuno curve, vi sono quattro grandi tribune (Main Grandstand, West Grandstand, North Grandstand e South Grandstand) e ha una caratteristica uscita dei box che passa sotto la pista", "+971 (0) 2 659 9800", "https://i.imgur.com/qv3ubsx.png");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("W13","Mercedes-AMG F1 M13 E Performance","2022","https://i.imgur.com/gj4L9uW.png","https://i0.wp.com/www.alphr.com/wp-content/uploads/2016/02/mercedes_engine_34_0-scaled.jpg?ssl=1",
"La Mercedes W13 ,ufficialmente Mercedes-AMG F1 W13 E Performance ,è un'auto da corsa di Formula 1 progettata e costruita dal Mercedes-AMG Petronas Formula One Team per competere nel Campionato del Mondo di Formula Uno 2022 
.L'auto è guidata da Lewis Hamilton e George Russell. La W13 vede il ritorno della tradizionale livrea argento, dopo che la W11 e la W12 sono state dipinte di nero a sostegno del movimento Black Lives Matter.");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("F1-75","Ferrari 066/7","2022","https://i.imgur.com/09Y2e7p.png","https://i0.wp.com/f1ingenerale.com/wp-content/uploads/2021/06/Cattura-4.jpg?resize=748%2C570&ssl=1","The Ferrari F1-75 is a Formula One racing car designed and constructed by Scuderia Ferrari and is competing in the 2022 Formula One World Championship. The car is driven by Charles Leclerc and Carlos Sainz Jr. The car made its competitive debut at the 2022 Bahrain Grand Prix.
South African engineer Rory Byrne, although not officially credited, was heavily involved in the design of the F1-75. As the car proved successful in the first part of the season, his contract was renewed for three years. ");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("RB18","Red Bull RBPTH001","2022","https://i.imgur.com/E8O7nuj.png","https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2021/2/15/ga5d8egfmhcfucznqqbq/2018-honda-ra618h",
"The Red Bull Racing RB18 is a Formula One car designed and constructed by Red Bull Racing to compete in the 2022 Formula One World Championship.The RB18 is driven by Max Verstappen and Sergio Pérez.
È interessante notare che il nome della monoposto 2022 non sara RB17 ma RB18. È possibile che il numero 17 sia stato saltato perché in alcuni paesi europei il 17 è considerato un numero sfortunato.");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("A522","Renault E-Tech RE22","2022","https://i.imgur.com/lbc7MiK.png","https://www.renaultgroup.com/wp-content/themes/renault/assets/media/saga/episode-3/focus-v6-1.jpg",
"The Alpine A522 is a Formula One racing car designed and constructed by the BWT Alpine F1 Team and is competing in the 2022 Formula One World Championship. The car is driven by Fernando Alonso and Esteban Ocon. 
La scuderia francese ha presentato l'A522 il 21 febbraio a pochi giorni dall'inizio dei test invernali di Barcellona, con una diretta streaming");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("VF-22","Ferrari 066/7","2022","https://i.imgur.com/72mhl10.png","https://i0.wp.com/f1ingenerale.com/wp-content/uploads/2021/06/Cattura-4.jpg?resize=748%2C570&ssl=1",
"Con il regolamento 2022 pensato per favorire lotte più ravvicinate, e quindi più sorpassi ed emozioni, l'aerodinamica della VF-22 è sorprendentemente diversa da qualsiasi cosa vista in precedenza.
 Nuovi elementi sono stati incorporati per raggiungere gli obietti del nuovo regolamento, come un fondo a effetto suolo, un'ala anteriore semplificata e un ala posteriore di forma totalmente diversa. ");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("MCL36","Mercedes-AMG F1 M13 E Performance","2022","https://i.imgur.com/RXolnEp.png","https://i0.wp.com/www.alphr.com/wp-content/uploads/2016/02/mercedes_engine_34_0-scaled.jpg?ssl=1",
"La nuova MCL36 è stata presentata presso il McLaren Technology Centre giorno 11 febbraio. La vettura che il team di Woking ha preparato per Lando Norris e Daniel Ricciardo per il campionato mondiale di F1 2022,
 sfoggia una livrea leggermente diversa da quella della scorsa stagione con l'azzurro a rubare molto spazio all'arancione papaia.");


INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("AMR 22","Mercedes M13 E Performance","2022","https://i.imgur.com/Yn3GY1z.png","https://i0.wp.com/www.alphr.com/wp-content/uploads/2016/02/mercedes_engine_34_0-scaled.jpg?ssl=1",
"Dopo un anno molto al di sotto delle aspettative Aston Martin si prepara a lanciare la sua monoposto per il rivoluzionario regolamento 2022. 
Nella passata stagione la vettura inglese ha sofferto di un elevato drag ed una bassa efficienza aerodinamica, tutti punti che saranno fondamentali il prossimo anno con le vetture studiate per sfruttare l’effetto suolo.");

INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("Alfa Romeo Racing C42","Ferrari 066/7","2022","https://i.imgur.com/MTa58MG.png","https://i0.wp.com/f1ingenerale.com/wp-content/uploads/2021/06/Cattura-4.jpg?resize=748%2C570&ssl=1",
"L'Alfa Romeo C42 è un'auto di Formula 1 progettata e costruita dall'Alfa Romeo per competere nel Campionato del Mondo di Formula 1 2022. Il C42 è costruito secondo la nuova generazione di regolamenti tecnici, 
originariamente prevista per l'introduzione nel 2021.L'auto è guidata dall'ex pilota Mercedes Valtteri Bottas e dal debuttante Zhou Guanyu.");

INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("AT03","Red Bull RBPTH001","2022","https://i.imgur.com/NKWHcDr.png","https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2021/2/15/ga5d8egfmhcfucznqqbq/2018-honda-ra618h",
"L'AlphaTauri AT03 è un'auto di Formula 1 costruita dalla Scuderia AlphaTauri e che gareggia nel Campionato del Mondo di Formula 1 2022. L'auto è guidata da Pierre Gasly e Yuki Tsunoda. 
L'AT03 è il terzo telaio costruito e progettato da AlphaTauri e la loro prima vettura secondo il regolamento tecnico del 2022.");

INSERT INTO Monoposto(id_vettura, motore, anno_produzione, foto_monoposto, foto_motore, storia)
VALUES("FW44","Mercedes-AMG M13 E Performance","2022","https://i.imgur.com/fLhpcxD.png","https://i0.wp.com/www.alphr.com/wp-content/uploads/2016/02/mercedes_engine_34_0-scaled.jpg?ssl=1",
"La Williams FW44 è un'auto da corsa di Formula 1 progettata e costruita dalla Williams per competere nel Campionato del Mondo di Formula 1 2022. La vettura è guidata da Nicholas Latifi e Alexander Albon,
 che sono rispettivamente al terzo e primo anno con la squadra. Nyck de Vries ha partecipato al Gran Premio d'Italia con la FW44, sostituendo Albon a causa dell'appendicite del pilota thailandese. 
Il telaio è il primo ad essere sviluppato interamente sotto la nuova proprietà.");


INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/eprWbxq.png","Mercedes AMG Petronas","1954","Germania","115","Lewis Hamilton","George Russell","Toto Wolff", "Mike Elliott",
"https://www.mercedesamgf1.com/en/","https://it.wikipedia.org/wiki/Mercedes_AMG_F1","W13", "https://i.imgur.com/xrLNwsk.png", "1954","La Mercedes ha svelato la W13 il 18 febbraio, vettura a bordo della quale Lewis Hamilton e George Russell inseguiranno il nono successo consecutivo nel campionato costruttori di Formula 1. 
Presenti all'evento entrambi i piloti e il CEO Toto Wolff.","La Mercedes AMG F1 è una scuderia tedesca di Formula 1 con sede a Brackley, nel Regno Unito.
 Dal 2020 viene iscritta al campionato mondiale di Formula 1 con il nome di Mercedes-AMG Petronas F1 Team, in base all'accordo di sponsorizzazione con l'azienda malese Petronas.
La Mercedes partecipò vittoriosamente al campionato mondiale di Formula 1 nel biennio 1954-1955 ottenendo due titoli mondiali piloti prima di ritirarsi. È poi ritornata in Formula 1 come fornitore di motori dal 1993.", "136", "266");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/eyVVbny.png","Red Bull Racing","2005","Austria","75","Max Verstappen","Sergio Perez","Christian Horner","Pierre Waché",
"https://www.redbullracing.com/int-en","https://www.redbull.com/it-it/red-bull-racing-storia-f1","RB18", "https://i.imgur.com/qzE5b5T.png", "2010","La Red Bull ha svelato la nuova monoposto 2022, 
la RB18 giorno 9 febbraio annunciando una modifica al nome della propria squadra in vista della prossima stagione. 
Il team sarà ora conosciuto come Oracle Red Bull Racing dopo aver accolto il marchio informatico Oracle come nuovo title sponsor.","La Red Bull Racing è una scuderia austriaca di Formula 1 con sede a Milton Keynes, 
nel Regno Unito, di proprietà della società Red Bull (azienda produttrice della omonima bevanda energetica e già sponsor, in precedenza, di altre squadre da corsa), dopo che questa ha rilevato il team inglese Jaguar Racing. 
Dal 2022 viene iscritta al campionato mondiale di Formula 1 con il nome di Oracle Red Bull Racing, per motivi di sponsorizzazione.", "78", "342");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/eSvsHqa.png","Ferrari","1950","Italia","239","Charles Leclerc","Carlos Saniz","Mattia Binotto","Enrico Cardile",
"https://www.ferrari.com/it-IT/formula1","https://www.ferrari.com/it-IT/formula1/storia","F1-75", "https://i.imgur.com/3zpxF1d.png", "1952","La F1-75, la vettura della Ferrari per la stagione 2022 di Formula 1,
 è stata svelata tramite diretta streaming il 17 febbraio. Presenti Mattia Binotto, Charles Leclerc e Carlos Sainz", "Fondata da Enzo Ferrari nel 1929, nel corso dei decenni si è imposta come una delle più note e 
titolate squadre nel panorama dell'automobilismo sportivo mondiale. Ha principalmente legato il suo nome al Campionato del Mondo di Formula Uno, 
in cui è presente fin dalla sua istituzione e in cui ha conquistato 15 volte il Titolo Piloti e 16 quello Costruttori.", "241", "1047");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/pZpIlyZ.png","McLaren F1","1966","Gran Bretagna","182","Lando Norris","Daniel Richardo","Andreas Seidl","James Key",
"https://www.mclaren.com/racing/","https://it.wikipedia.org/wiki/McLaren_F1","MCL36", "https://i.imgur.com/Y95kveW.png", "1974","La nuova MCL36 è stata presentata presso il McLaren Technology Centre giorno 11 febbraio.
 La vettura che il team di Woking ha preparato per Lando Norris e Daniel Ricciardo per il campionato mondiale di F1 2022, 
sfoggia una livrea leggermente diversa da quella della scorsa stagione con l'azzurro a rubare molto spazio all'arancione papaia.","La McLaren è una scuderia britannica di Formula 1 con sede a Woking. 
Dal 2018 viene iscritta al Campionato mondiale di Formula 1 con il nome di McLaren F1 Team.Fondata il 2 settembre 1963 dal pilota neozelandese Bruce McLaren (1937-1970), 
esordì nel 1966 ed è, insieme alla Williams, una delle più prestigiose scuderie britanniche della massima formula ancora in attività.", "156", "919");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/fisKlcS.png","BWT Alpine F1","1977","Francia","20","Fernando Alonso","Esteban Ocon","Otmar Szafnauer","Pat Fry",
"https://alpinecars.it","https://it.wikipedia.org/wiki/Renault_F1","A522", "https://i.imgur.com/NaWu21k.png", "2005","La scuderia francese ha presentato l'A522 il 21 febbraio a pochi giorni dall'inizio dei test invernali di Barcellona,
 con una diretta streaming", "La Renault F1 è una scuderia francese di Formula 1 con sede a Enstone, nel Regno Unito.  Dal 2022 viene iscritta al campionato mondiale di Formula 1 con il nome di BWT Alpine F1 Team.
È stata presente nella massima categoria in tre fasi distinte: dal 1977 al 1985 in cui introdusse l'innovazione del motore con turbocompressore; dal 2002 al 2011 e dal 2016 sempre come costruttore a tempo pieno.", "51", "439");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/wj12HQK.png","Scuderia AlphaTauri Honda","2006","Italia","2","Pierre Gasly","Yuki Tsunoda","Franz Tost","Jody Egginton",
"https://scuderia.alphatauri.com/it/","https://scuderia.alphatauri.com/it/la-storia-di-honda-in-f1/","AT03", "https://i.imgur.com/tdW6k5r.png", "0","La scuderia faentina ha rivelato l'AT03, con un evento online il 14 febbraio 2022, 
il giorno di San Valentino. ","La Scuderia AlphaTauri, nota dal 2006 al 2019 come Scuderia Toro Rosso, è una squadra corse italiana di Formula 1 con sede a Faenza, 
erede della Minardi dopo l'acquisto da parte dell'azienda austriaca Red Bull. Dal 2020 viene iscritta al Campionato mondiale di Formula 1 con il nome di Scuderia AlphaTauri Honda, 
in seguito al cambio di denominazione avvenuto nello stesso anno, e all'accordo di motorizzazione con la Honda iniziato nel 2018.", "1", "324");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/ElMMEfo.png","Aston Martin Cognizant F1 Team","2018","Regno Unito","0","Lance Stroll","Sebastian Vettel", "Mike Krack","Andrew Green",
"https://www.astonmartinf1.com/en-GB/","https://it.wikipedia.org/wiki/Aston_Martin_F1_Team","AMR 22", "https://i.imgur.com/ZM6M5Zo.png", "0","L'Aston Martin F1 Team ha svelato la sua monoposto per la stagione 2022, la AMR22, 
con una diretta streaming Youtube dalla sede di Silverstone. La AMR22 è stata presentata da Lawrance Stroll, in diretta dallo stabilimento di Silverstone. 
Sul palco oltre alla nuova monoposto coperta da una grande bandiera inglese anche altre supercar della Aston Martin. ","L’Aston Martin F1 Team, nota dal 2019 al 2020 come Racing Point,
 è una scuderia britannica di Formula 1 con sede a Silverstone. Dal 2022 viene iscritta al campionato mondiale di Formula 1 con il nome di Aston Martin Aramco Cognizant F1 Team,
 in base all'accordo di sponsorizzazione con l'azienda statunitense Cognizant iniziato nel 2021.
Nel corso della stagione 2018, il canadese Lawrence Stroll rileva la scuderia Force India, in difficoltà finanziarie, diventandone il nuovo proprietario.", "1", "77");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/bXE35Dr.png","Williams Racing","1973","Regno Unito","114","Nicolas Latifi","Alexander Albon","Jost Capito","François-Xavier Demaison",
"https://www.williamsf1.com/","https://it.wikipedia.org/wiki/Williams_F1","FW44", "https://i.imgur.com/nKjLblC.png", "1980","La FW44, che speriamo abbia scelto soluzioni vincenti, 
rappresenta sicuramente una interpretazione molto particolare del nuovo regolamento. La forma dei sidepod, il gande canale per l'aria tra questi ed il fondo, 
la pancia estremamente sottile in prossimità dell'uscita dei canali di Venturi sono soluzioni estreme scelte da Williams per esaltare l'effetto suolo ed affrontare la stagione del grande cambimento tecnico.", 
"La Williams F1 è una scuderia britannica di Formula 1 con sede a Grove, fondata nel 1977 da Sir Frank Williams e da Sir Patrick Head. Dal 2020 viene iscritta al Campionato mondiale di Formula 1 con il nome di Williams Racing.
Terza scuderia nella storia per numero di successi, vanta un totale di sedici titoli mondiali, nove costruttori e sette piloti. Il 21 agosto 2020 viene venduta ufficialmente al fondo di investimento statunitense Dorilton Capital.", "128", "783");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/quGjTQU.png","Alfa Romeo F1 Team ORLEN","1993","Svizzera","0","Zhou Guanyu","Valtteri Bottas","Frédéric Vasseur","Jan Monchaux",
"https://www.alfaromeo.it/alfa-romeo-racing","https://it.wikipedia.org/wiki/Sauber_F1_Team","Alfa Romeo Racing C42", "https://i.imgur.com/ETVa98f.png", "0","L'Alfa Romeo è stata l'ultima scuderia a presentare la sua vettura 2022
 di Formula 1, avendo disputato anche i test a Barcellona con una livrea mimetica. La presentazione è stata affidata ad un evento streaming il 27 febbraio,
 con la pubblicazione contemporanea delle immagini e di un video della C42 con la nuova livrea","La Sauber F1 Team è una scuderia svizzera di Formula 1 e precedentemente di vetture sport, 
impegnate tra l'altro nel Campionato del mondo sport prototipi, fondata da Peter Sauber e con sede a Hinwil. Dal 2020 viene iscritta al Campionato mondiale di Formula 1 con il nome di Alfa Romeo Racing ORLEN,
 in seguito all'accordo di sponsorizzazione con la casa automobilistica italiana iniziato nel 2018 e a quello con l'azienda polacca diventata co-title sponsor dal 2020.", "12", "110");

INSERT INTO scuderia(logo,nome_scuderia,anno_esordio,nazionalita,numero_vittorie,primo_pilota,secondo_pilota,team_principal, direttore_tecnico, sito_web,storia,id_vettura, icona, primo_mondiale, bio_vettura, info, pole_positions, numero_partecipazioni)
VALUES("https://i.imgur.com/inGG4Fx.png","Haas F1 Team","2016","USA","0","Kevin Magnussen","Mick Schumacher","Gunther Steiner", "Simone Resta",
"https://www.haasf1team.com/","https://it.wikipedia.org/wiki/Haas_F1_Team","VF-22", "https://i.imgur.com/QfiK4Mc.png", "0","La VF-22 è il primo progetto uscito dal nuovo ufficio di progettazione del team americano a Maranello,
guidato dal direttore tecnico Simone Resta. Un nuovo team tecnico è stato inserito nel tessuto esistente della squadra, che ora entra nella sua settima stagione in Formula 1, ed ha portato alla progettazione della VF-22, 
un'auto che ha la sua genesi in un regolamento completamente nuovo.","La Haas F1 Team è una scuderia statunitense di Formula 1 con sede a Banbury, nel Regno Unito, di proprietà della Haas Automation.
La città britannica rappresenta una sede distaccata del team, in precedenza appartenuta alla Marussia, come appoggio per le gare europee del campionato.
Fondata da Gene Haas, già cofondatore della scuderia del campionato NASCAR Stewart-Haas Racing, anch'essa con sede a Kannapolis, fa il suo debutto nel campionato mondiale di Formula 1 2016. ", "0", "139");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/Kp7hILL.png","https://i.imgur.com/to0gkQ7.jpg","https://i.imgur.com/gJwHhRH.png","Lewis", "Hamilton", "1985-1-7", "Stevenage", "Inglese","44", "7","https://www.instagram.com/lewishamilton/", "https://it.wikipedia.org/wiki/Lewis_Hamilton", "Mercedes AMG Petronas",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Regno-Unito.webp", "Lewis Carl Davidson Hamilton; Stevenage, 7 gennaio 1985) è un pilota automobilistico britannico, cinque volte campione del mondo di Formula 1, nel 2008 con la McLaren e nel 2014, 2015, 2017 e 2018 con la Mercedes.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/BaKqovJ.png","https://i.imgur.com/Nj6iEm9.jpg","https://i.imgur.com/qwkR6dr.png","George", "Russel", "1998-2-15", "King's Lynn", "Inglese","63", "0","https://www.instagram.com/georgerussell63/", "https://it.wikipedia.org/wiki/George_Russell_(pilota_automobilistico)", "Mercedes AMG Petronas" ,
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Regno-Unito.webp", "Russell entra a far parte del programma giovani della Mercedes nel gennaio 2017, e fa il suo debutto in una monoposto di Formula 1 il 1º agosto nei test di Budapest della stagione 2017 con la W08, disputando entrambi i giorni di test. Partecipa inoltre alle ultime due sessioni di prove libere del campionato 2017 con la Force India. Viene confermato anche per il 2018 come collaudatore Mercedes.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/SutsmUR.png","https://i.imgur.com/IEOVpS0.jpg","https://i.imgur.com/R7y5YjW.png","Max", "Verstappen", "1997-9-30", "Hasselt", "Belga","1", "1","https://www.instagram.com/maxverstappen1/", "https://it.wikipedia.org/wiki/Max_Verstappen" ,"Red Bull Racing" ,
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Belgio.webp", "Debutta in Formula 1 nel 2015 al volante della Toro Rosso con la quale gareggia anche per i primi quattro Gran Premi del 2016, per poi essere promosso a seconda guida Red Bull, team con il quale diventa il più giovane pilota ad aver vinto una gara del campionato del mondo di Formula 1 a soli 18 anni, 7 mesi e 15 giorni");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/JMur8Jt.png","https://i.imgur.com/FYp1CkS.jpg","https://i.imgur.com/LPgTOnV.png","Sergio", "Perez", "1990-1-26", "Guadalajara", "Messicano","11", "0", "https://www.instagram.com/schecoperez/", "https://it.wikipedia.org/wiki/Sergio_P%C3%A9rez_(pilota_automobilistico)", "Red Bull Racing", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Messico.webp" , "Il 4 ottobre 2010 la Sauber annunciò l'ingaggio di Pérez per le successive due stagioni di Formula 1, al fianco del giapponese Kamui Kobayashi. Il pilota messicano portò al team svizzero l'appoggio economico della Telmex, che lo aveva sostenuto per gran parte della sua carriera.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/ILWzmh7.png","https://i.imgur.com/SldO7Hz.jpg","https://i.imgur.com/OOXEdDK.png","Carlos", "Sainz", "1994-9-1", "Madrid", "Spagnolo","55", "0", "https://www.instagram.com/carlossainz55/", "https://it.wikipedia.org/wiki/Carlos_Sainz_Jr.", "Ferrari", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Spagna.webp", "Nel 2010 entra a far parte del Red Bull Junior Team e, contemporaneamente, partecipa al campionato europeo di Formula BMW con una vettura del team EuroInternational, ottenendo il titolo di Rookie Cup e vincendo il prestigioso Gran Premio di Macao.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/BmAwu7B.png","https://i.imgur.com/H8UoWvO.jpg","https://i.imgur.com/v4cfBbq.png","Charles", "Leclerc", "1997-10-16", "Monaco", "Monegasco","16", "0", "https://www.instagram.com/charles_leclerc/", "https://it.wikipedia.org/wiki/Charles_Leclerc", "Ferrari", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Monaco.webp", "Nel 2014, Leclerc passò alle monoposto, correndo nella Formula Renault 2.0 Alps per la squadra britannica Fortec Motorsports. Durante la stagione ottenne sette podi, tra i quali due vittorie, una delle quali a Monza, mentre l'altra arrivò nel round finale a Jerez, dove precedette il russo Matevos Isaakyan. Concluse il campionato al 2º posto, alle spalle di Nyck de Vries su Koiranen.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/MiBbG5r.png","https://i.imgur.com/zLyodhR.jpg","https://i.imgur.com/BPemkQ8.png","Lando", "Norris", "1999-11-13", "Bristol", "Inglese","4", "0","https://www.instagram.com/landonorris/", "https://it.wikipedia.org/wiki/Lando_Norris", "McLaren F1", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Regno-Unito.webp", "Il 22 febbraio 2017 viene annunciato il suo ingresso nel programma per giovani piloti del team McLaren di Formula 1. Il 2 agosto 2017 fa il suo debutto in una monoposto di Formula 1 ai test di Budapest nel circuito dell'Hungaroring, ottenendo il secondo miglior tempo alle spalle di Sebastian Vettel.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/3Q1nw8i.png","https://i.imgur.com/InAnd6w.jpg","https://i.imgur.com/WnfQuPN.png","Daniel", "Ricciardo", "1989-7-1", "Perth", "Australiano","3", "0", "https://www.instagram.com/danielricciardo/", "https://it.wikipedia.org/wiki/Daniel_Ricciardo", "McLaren F1",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Australia.webp", "Ricciardo fece il suo esordio con una vettura di Formula 1 quando partecipò con la Red Bull Racing al test per giovani piloti tenutosi sul circuito di Jerez dal 1º al 3 dicembre 2009. Il giorno finale fece segnare il tempo migliore, l'unico sotto l'1'18.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/9TajKMN.png","https://i.imgur.com/0F9UDaI.jpg","https://i.imgur.com/fSwXs9T.png","Fernando", "Alonso", "1981-7-29", "Oviedo", "Spagnolo","14", "2", "https://www.instagram.com/fernandoalo_oficial/", "https://it.wikipedia.org/wiki/Fernando_Alonso", "BWT Alpine F1",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Spagna.webp", "È stato considerato da parte della stampa, da parte dei tifosi e colleghi, nonché dagli esperti come uno dei più grandi talenti di sempre nelle corse automobilistiche, secondo la rivista statunitense Sports Illustrated nel 2013 figurava al terzo posto fra gli sportivi più ricchi e pagati del mondo. Il suo numero di gara è il 14.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/R34PWRx.png","https://i.imgur.com/ouwOqRw.jpg","https://i.imgur.com/QAWoZSv.png","Esteban", "Ocon", "1996-9-17", "Évreux", "Francese","31", "0","https://www.instagram.com/estebanocon/", "https://it.wikipedia.org/wiki/Esteban_Ocon", "BWT Alpine F1",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Francia.webp", "Nel 2012 Ocon fece il suo debutto sulle monoposto, prendendo parte alla Eurocup Formula Renault 2.0 con la Koiranen Motorsport. Finì quattordicesimo arrivando a punti quattro volte, compreso un podio al suo Gran Premio di casa al Paul Ricard. Ha inoltre disputato una parte del campionato di Formula Renault 2.0 Alps");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/p5E5vzp.png","https://i.imgur.com/5sikSmV.jpg","https://i.imgur.com/JjysjzW.png","Pierre", "Gasly",  "1996-2-7", "Rouen", "Francese","10", "0", "https://www.instagram.com/pierregasly/", "https://it.wikipedia.org/wiki/Pierre_Gasly", "Scuderia AlphaTauri Honda",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Francia.webp", "Gasly passò alla Formula Renault 2.0 nel 2012, guidando per R-Ace GP. Concluse 10º con sei arrivi a punti, tra i quali vi sono podi a Spa e al Nürburgring. Partecipò anche a sei gare di Formula Renault 2.0 Northern European Cup con la stessa squadra, arrivando a podio al Nürburgring-" );

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/F455J53.png","https://i.imgur.com/GnyYSu3.jpg","https://i.imgur.com/INJEc4X.png","Yuki ", "Tsunoda", "2000-5-11", "Sagamihara", "Giapponese","22", "0", "https://www.instagram.com/yukitsunoda0511/", "https://it.wikipedia.org/wiki/Yuki_Tsunoda", "Scuderia AlphaTauri Honda",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Giappone.webp", "Nel 2016 Tsunoda fece il suo debutto con le monoposto, prendendo parte a due gare del campionato giapponese di F4; nella gara di esordio, sul circuito di Suzuka, chiuse in seconda posizione. L'anno seguente Tsunoda partecipò al campionato completo, terminando in quarta posizione assoluta." );

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/500o3WO.png","https://i.imgur.com/iH5hs28.jpg","https://i.imgur.com/cpAUFog.png","Sebastian", "Vettel", "1987-7-3", "Heppenheim", "Tedesco","5", "4", "https://www.instagram.com/sebastianvettel/", "https://it.wikipedia.org/wiki/Sebastian_Vettel", "Aston Martin Cognizant F1 Team",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Germania.webp", "Detiene anche il record del maggior numero di pole position in una singola stagione (15, nel 2011), di gran premi vinti in una stagione (13, nel 2013, record condiviso con Michael Schumacher), di gran premi vinti consecutivamente (9 nel 2013) ed è il terzo pilota per numero di vittorie (52) dietro a Michael Schumacher (91) e Lewis Hamilton (73). Il suo numero di gara è il 5.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/8GGs0nl.png","https://i.imgur.com/7PlfZlW.jpg","https://i.imgur.com/ewIykfN.png","Lance", "Stroll", "1998-10-19", "Montreal", "Canadese","18", "0", "https://www.instagram.com/lance__stroll/", "https://it.wikipedia.org/wiki/Lance_Stroll", "Aston Martin Cognizant F1 Team",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Canada.webp" , "Nel 2014 debuttò in monoposto, partecipando prima alla Florida Winter Series e poi alla Formula 4 italiana con i colori della Prema Powerteam, con la quale fece sue quattro gare, sette podi, quattro pole e tre giri veloci, issandosi in testa alla classifica.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/cRJnbtY.png","https://i.imgur.com/ltMTr2F.jpg","https://i.imgur.com/rZ1HP9x.png","Nicholas", "Latifi", "1995-6-29", "Montreal", "Canadese","6", "0", "https://www.instagram.com/nicholaslatifi/", "https://it.wikipedia.org/wiki/Nicholas_Latifi", "Williams Racing", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Canada.webp" , "Il 14 marzo 2016 Latifi viene ufficializzato come Test Driver per Renault in F1. Il 1º agosto 2017 prende parte alla sessione di test sul circuito dell Hungaroring al volante di una Renault R.S.17. Per la stagione successiva viene invece scelto come Collaudatore e pilota di riserva dalla Force India, con cui prende parte alle prime prove libere del Gran Premio del Canada e di altri tre Gran Premi.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/cUUd69u.png","https://i.imgur.com/m8nWksD.jpg","https://i.imgur.com/n8geQkb.png","Alexander", "Albon", "1996-3-23", "Londra", "Thailandese","23", "0", "https://www.instagram.com/alex_albon/", "https://it.wikipedia.org/wiki/Alexander_Albon", "Williams Racing",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Thailandia.webp", "Albon debutta nelle monoposto nel 2012, anno in cui entra a far parte del Red Bull Junior Team. Gareggia nella Eurocup Formula Renault 2.0 dal 2012 al 2014. Nel suo primo anno corre con la Epic Racing, terminando 38º e senza ottenere punti. Nel 2013, dopo essere entrato a far parte del programma Lotus F1 Junior Team, passa al team KTR di Kurt Mollekens." );

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/p5LkdTg.png","https://i.imgur.com/NSl3035.jpg","https://i.imgur.com/hgqRT1y.png","Zhou", "Guanyu", "1999-5-30", "Shanghai", "Cinese","24", "0", "https://www.instagram.com/zhouguanyu24/", "https://it.wikipedia.org/wiki/Zhou_Guanyu", "Alfa Romeo F1 Team ORLEN", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Cina.webp", "Il 16 novembre 2021 l Alfa Romeo Racing annuncia Zhou come pilota titolare per la stagione 2022 al posto di Antonio Giovinazzi, in coppia con il finlandese Valtteri Bottas; al debutto, Zhou diventerebbe il primo pilota cinese a prendere parte a un Gran Premio di Formula 1" );

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/Fmdh2C6.png","https://i.imgur.com/POdsvA5.jpg","https://i.imgur.com/lYvGeFG.png","Valtteri", "Bottas", "1989-8-28", "Nastola", "Finlandese","77", "0", "https://www.instagram.com/valtteribottas/", "https://it.wikipedia.org/wiki/Valtteri_Bottas", "Alfa Romeo F1 Team ORLEN",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Finlandia.webp", "Passato a correre nel 2009 per il team ART Grand Prix in Formula 3 Euroseries, pur non vincendo alcuna gara, è arrivato terzo in campionato, conquistando anche due pole position. Nel 2010 è diventato terzo pilota della Williams e ha corso nuovamente in F3 Euro Series, chiudendo al terzo posto finale con due vittorie all attivo.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/xgtdzgi.png","https://i.imgur.com/3F2isMv.jpg","https://i.imgur.com/5UJLMPC.png","Kevin", "Magnussen", "1992-10-5", "Roskilde", "Danese","20", "0", "https://www.instagram.com/kevinmagnussen/", "https://it.wikipedia.org/wiki/Kevin_Magnussen" , "Haas F1 Team", 
"https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Danimarca.webp", "Dopo aver vinto il titolo della Formula Renault 3.5 Series, il 14 novembre 2013 viene ufficializzato il suo ingaggio come pilota della McLaren in Formula 1 per il 2014 al posto del partente Sergio Pérez.");

INSERT INTO pilota (foto, foto_grande, foto_card, nome,cognome,data_nascita,luogo_nascita,nazionalita,numero_pilota,titoli_mondiali,profilo_social,biografia,nome_scuderia, bandiera, storia)
VALUES("https://i.imgur.com/zpUJyeq.png ","https://i.imgur.com/jXCw9g7.jpg","https://i.imgur.com/rDJC6wb.png","Mick ", "Schumacher", "1999-3-22", "Vufflens-le-Château", "Tedesco","47", "0", "https://www.instagram.com/mickschumacher/", "https://it.wikipedia.org/wiki/Mick_Schumacher" , "Haas F1 Team",
 "https://www.viaggiaregratis.eu/wp-content/uploads/2021/12/Bandiera-Germania.webp", "Il 2 dicembre 2020 viene nuovamente annunciato il suo debutto in Formula 1 al volante della Haas VF-20 di Kevin Magnussen durante la prima sessione di prove libere del Gran Premio di Abu Dhabi. Lo stesso giorno viene annunciato alla guida del team statunitense a partire dal 2021, dopo aver siglato un contratto pluriennale" );




