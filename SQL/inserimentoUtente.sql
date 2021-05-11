CREATE PROCEDURE inserimentoUtente( idj VARCHAR(10), nomej VARCHAR(50), cognomej VARCHAR(50), cfj VARCHAR(16), emailj VARCHAR(50),cellularej VARCHAR(15),tipologiaj VARCHAR(50), numeroordinij INTEGER,passj VARCHAR(100))
BEGIN
insert into Utente(ID,Nome,Cognome,CF,Email,Cellulare,Tipologia,NumeroOrdini,Pwsd) 
values (idj,nomej,cognomej,cfj,emailj,cellularej,tipologiaj,numerordinij,passj);
END


