ALTER TABLE Informacje_o_dostawie
ADD CONSTRAINT ID_dostawy FOREIGN KEY (ID_dostawy) REFERENCES Dostawy(ID_dostawy);

ALTER TABLE Informacje_o_dostawie
ADD CONSTRAINT ID_magazynu FOREIGN KEY (ID_magazynu) REFERENCES Magazyny(ID_magazynu);

ALTER TABLE Koszty_utrzymania
ADD CONSTRAINT ID_miesiaca_zarobkow FOREIGN KEY (ID_miesiaca_zarobkow) REFERENCES Zarobki(ID_miesiaca_zarobkow);

ALTER TABLE Zarobki
ADD CONSTRAINT ID_banku FOREIGN KEY (ID_banku) REFERENCES Finanse(ID_banku);
