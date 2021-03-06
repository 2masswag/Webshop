CREATE TABLE IF NOT EXISTS Eigenaren
( 
EigenaarID SMALLINT NOT NULL AUTO_INCREMENT,
Naam_Eigenaar CHAR(24) NOT NULL  ,
Email_Eigenaar CHAR(30) NOT NULL ,
Telefoonnummer_Eigenaar CHAR(15) NOT NULL ,
PRIMARY KEY(EigenaarID)
) ;

CREATE TABLE IF NOT EXISTS Producten
(
ProductID SMALLINT NOT NULL AUTO_INCREMENT,
Prijs CHAR(12) NOT NULL ,
EigenaarID SMALLINT NOT NULL ,
Merk_auto CHAR(25) NOT NULL ,
Model_Auto CHAR(25) NOT NULL ,
Bouwjaar CHAR (5) NOT NULL ,
Vermogen CHAR(8) NOT NULL ,
Zitplaatsen CHAR(2) NOT NULL ,
Deuren CHAR(2) NOT NULL ,
Verbruik CHAR(10) NOT NULL ,
Brandstof CHAR(12) NOT NULL ,
Aandrijving CHAR(15) NOT NULL ,
Transmissie CHAR(15) NOT NULL ,
Aantal_Versnellingen CHAR(3) NOT NULL ,
Kilometerstand CHAR(15) NOT NULL ,
PRIMARY KEY(ProductID) ,
FOREIGN KEY (EigenaarID)
REFERENCES Eigenaren(EigenaarID) 
) ;

CREATE TABLE IF NOT EXISTS Klanten
( 
KlantID SMALLINT NOT NULL AUTO_INCREMENT,
Voornaam CHAR(24) NOT NULL,
Tussenvoegsel CHAR(12),
Achternaam Char(24) NOT NULL,
Email CHAR(60) NOT NULL ,
Telefoonnummer CHAR(15) NOT NULL ,
Straat CHAR(20) NOT NULL ,
Woonplaats CHAR(20) NOT NULL ,
Postcode CHAR (7) NOT NULL ,
PRIMARY KEY (KlantID) 
) ;

CREATE TABLE IF NOT EXISTS Bestellingen
(
BestellingID SMALLINT NOT NULL AUTO_INCREMENT , 
KlantID SMALLINT NOT NULL ,
ProductID SMALLINT NOT NULL ,
Prijs CHAR(12) NOT NULL ,
EigenaarID SMALLINT NOT NULL ,
PRIMARY KEY (BestellingID) ,
FOREIGN KEY (KlantID) 
REFERENCES Klanten(KlantID) ,
FOREIGN KEY (ProductID) 
REFERENCES Producten(ProductID) ,
FOREIGN KEY (EigenaarID)
REFERENCES Eigenaren(EigenaarID)
) ;
