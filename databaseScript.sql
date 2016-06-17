CREATE TABLE IF NOT EXISTS Klanten
( 
	KlantID SMALLINT NOT NULL,
	Voornaam CHAR(24) NOT NULL,
	Tussenvoegsel CHAR(12),
	Achternaam Char(24) NOT NULL,
	Email CHAR(30) NOT NULL ,
	Telefoonnummer CHAR(15) NOT NULL ,
	Straat CHAR(20) NOT NULL ,
	Woonplaats CHAR(20) NOT NULL ,
	Postcode CHAR (7) NOT NULL ,
	Bestelhistorie CHAR(50) NOT NULL ,
	PRIMARY KEY (KlantID) ,
)

CREATE TABLE IF NOT EXISTS Eigenaren
( 
	EigenaarID SMALLINT NOT NULL,
	Naam_Eigenaar CHAR(24) NOT NULL  ,
	Email_Eigenaar CHAR(30) NOT NULL ,
	Telefoonnummer_Eigenaar CHAR(15) NOT NULL ,
	PRIMARY KEY(EigenaarID)
)

CREATE TABLE IF NOT EXISTS Producten
(
	ProductID SMALLINT NOT NULL ,
	Prijs CHAR(12) NOT NULL ,
	EigenaarID SMALLINT NOT NULL ,
	Model_Auto CHAR(25) NOT NULL ,
	Vermogen CHAR(8) NOT NULL ,
	Zitplaatsen CHAR(2) NOT NULL ,
	Deuren CHAR(1) NOT NULL ,
	PRIMARY KEY(ProductID) ,
	FOREIGN KEY (EigenaarID)
	REFERECES Eigenaren(EigenaarID) 
)

CREATE TABLE IF NOT EXISTS Bestellingen
(
	BestellingID SMALLINT NOT NULL , 
	KlantenID SMALLINT NOT NULL ,
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
)
