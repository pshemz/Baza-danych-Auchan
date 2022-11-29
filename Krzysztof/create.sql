CREATE TABLE DOSTAWCY (
	ID_dostawcy int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	imie varchar(16) NOT NULL,
	wiek int NULL,
	zaladunek int NOT NULL,
	czas_dostawy int NULL
);

CREATE TABLE DOSTAWY (
	ID_dostawy int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	ID_zamowienia int NOT NULL,
	wartosc_dostawy int NOT NULL,
	data_dostawy date NOT NULL,
	kwota int NOT NULL
);

CREATE TABLE SPRZEDAZ (
	ID_sprzedazy int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	sprzedaz_w_mies int NOT NULL,
	zarobki	int NULL,
	nr_sprzedazy int NOT NULL
);

CREATE TABLE PRZYCHOD_MIESIECZNY (
	ID_przychodu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	kwota_zakupu int NOT NULL,
	zarobki int NULL,
	cena_netto int NOT NULL,
	nazwa varchar(50) NOT NULL
);

CREATE TABLE DZIAL ( 
	ID_dzialu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	nazwa_dzialu int NOT NULL,
	przeznaczenie varchar(50) NOT NULL,
	dzial_sklepowy bool NOT NULL,
	dzial_magazynowy bool NOT NULL
);
