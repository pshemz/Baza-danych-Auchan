CREATE TABLE KLIENT (
    ID_klienta int NOT NULL PRIMARY KEY,
    login varchar(15) NOT NULL,
  	haslo varchar(20) NOT NULL,
    email varchar(20) NULL,
	imie varchar(30) NULL,
	nazwisko varchar(30) NULL,
	płeć varchar(10) NULL,
	wiek int NULL
);

CREATE TABLE KONTAKTY (
    nr_tel1 int NOT NULL PRIMARY KEY,
    nr_tel2 int NOT NULL,
  	adres_strony varchar(50) NOT NULL,
    email varchar(35) NOT NULL,
	fax int NOT NULL,
);

CREATE TABLE PRODUKTY (
    Nazwa_produktu varchar(45) NOT NULL,
    typ_produktu varchar(50) NULL,
  	przecenione bit NULL,
    opis_produktu text NULL,
	wyprzedane bit NULL,
	ID_produktu int NOT NULL PRIMARY KEY
);

CREATE TABLE FAKTURA_SPRZEDAŻY (
    ID_zamowienia int NOT NULL,
    ID_klienta int NOT NULL,
  	nr_faktury int NULL,
    data_sprzedaży datetime NULL,
	forma_platnosci varchar(20) NULL,
	nr_tel1 int NOT NULL,
	ID_produktu int NOT NULL
);

CREATE TABLE ZAMOWIENIE (
    ID_zamowienia int NOT NULL PRIMARY KEY,
    skompletowane bit NULL,
  	oplacone bit NOT NULL,
    przyjete bit NULL,
	czas_dostawy datetime NULL,
	ID_produktu int NOT NULL,
	cena int NOT NULL
);
