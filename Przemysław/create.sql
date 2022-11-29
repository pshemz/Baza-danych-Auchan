CREATE TABLE ADRES (
    ID_adresu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    miasto varchar(16) NOT NULL,
    wojewodztwo varchar(16) NULL,
    ulica varchar(16) NOT NULL,
    numer_budynku int NOT NULL
);

CREATE TABLE DZIALKA (
    ID_dzialki int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    powierzchnia varchar(16) NOT NULL,
    szerokosc varchar(16) NULL,
    dlugosc varchar(16) NULL
);

CREATE TABLE LOKALIZACJA (
    ID_lokalizacji int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    odleglosc_od_centrum int NOT NULL,
    sklep_w_miescie bool NULL,
    strefa_ekonomiczna bool NOT NULL
);

CREATE TABLE PARKING (
    ID_parkingu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    ilosc_miejsc int NOT NULL,
    ilosc_miejsc_inwalidzi int NOT NULL,
    parking_bezplatny bool NULL,
    firma_parkingowa varchar(16) NOT NULL
);

CREATE TABLE DOSTAWCZAKI (
    ID_dostawczaka int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    marka varchar(16) NOT NULL,
    kolor varchar(16) NULL,
    rocznik int NOT NULL,
);
