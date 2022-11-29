CREATE TABLE KLIENT (
  ID_klienta int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  login varchar(15) NOT NULL,
  haslo varchar(20) NOT NULL,
  email varchar(20) NULL,
  imie varchar(30) NULL,
  nazwisko varchar(30) NULL,
  plec varchar(10) NULL,
  wiek int NULL
);

CREATE TABLE KONTAKTY (
  nr_tel1 int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  nr_tel2 int NOT NULL,
  adres_strony varchar(50) NOT NULL,
  email varchar(35) NOT NULL,
  fax int NOT NULL,
);

CREATE TABLE PRODUKTY (
  ID_produktu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  nazwa_produktu varchar(45) NOT NULL,
  typ_produktu varchar(50) NULL,
  przecenione bit NULL,
  opis_produktu text NULL,
	wyprzedane bit NULL,
);

CREATE TABLE FAKTURA_SPRZEDAŻY (
  ID_faktury int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  data_faktury date NULL,
	forma_platnosci varchar(20) NULL,
);

CREATE TABLE ZAMOWIENIE (
  ID_zamowienia int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  skompletowane bit NULL,
  oplacone bit NOT NULL,
  przyjete bit NULL,
	data_dostawy date NULL,
	cena int NOT NULL
);
