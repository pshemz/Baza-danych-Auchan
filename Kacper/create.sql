CREATE TABLE STAN_PRODUKTOW (
    ID_stanu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    dostepnosc bit NULL,
  	ilosc_produktow int NULL,
    cena_produktu int NULL
);

CREATE TABLE LOKAL (
    ID_lokalu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    data_wybudowania date NOT NULL,
  	wielkosc_lokalu int NOT NULL,
    ID_ogrzewania int NULL
);

CREATE TABLE OGRZEWANIE (
    ID_ogrzewania int NOT NULL IDENTITY(1, 1)PRIMARY KEY,
    sposob_ogrzewania varchar(16) NULL,
  	srednia_temp int NULL,
    wydatki_na_ogrzewanie int NULL
);

CREATE TABLE MAGAZYNY (
    ID_magazynu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    dostępność bit NULL,
  	produkt_ilosc int NULL,
    cena_produktu int NULL
);

CREATE TABLE KASY (
    ID_kasy int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    ilosc_kas int NOT NULL,
  	kasy_samoobslugowe bit NULL
);
