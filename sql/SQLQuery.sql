Create database Banca 
use Banca  
go 
  
  
Create table Persoana  
(
  CodPersoana varchar (20) not null primary key 
  ,NPPersoana  varchar (20) not null
  ,Adresa varchar (20) not null,
  ,Telefon varchar (20) not null,
  ,CodDepozit varchar (20) not null, 
  
);


Create table Depozit_Bancar 
(
  CodDepozit varchar (20) not null primary key 
  ,Denumirea varchar (20) not null 
  ,Suma varchar (20) not null 
  ,RataDobinzii varchar (20) not null,

);

select * from Depozit_Bancar
select * from Persoana 


INSERT INTO Persoana  (CodPasager,NPPersoana,Adresa,Telefon,CodDepozit)
   VALUES ('1','Varzari Teodor ','Str. Gradinilor 23', '068453998', '2')
INSERT INTO Persoana  (CodPasager,NPPersoana,Adresa,Telefon,CodDepozit)
   VALUES ('2','Cojocaru Vasile  ','Str. Vasile Lupu 45','078543211', '1')
INSERT INTO Persoana  (CodPasager,NPPersoana,Adresa,Telefon,CodDepozit)
   VALUES ('3','Vleju Grigore ','Str. Uzinlor 17','079097868', '3') 
   
    
   
 INSERT INTO Depozit_Bancar  (CodDepozit,Denumirea,Suma,RataDobinzii)
   VALUES ('1','Brandusa ',' 200 $', '3')
   
  INSERT INTO Depozit_Bancar  (CodDepozit,Denumirea,Suma,RataDobinzii)
   VALUES ('2','Floricica ',' 150 $','1')
   
INSERT INTO Depozit_Bancar  (CodDepozit,Denumirea,Suma,RataDobinzii)
   VALUES ('3 ',' Olix ',' 300 $','2')
   
  
 ALTER TABLE Depozit_Bancar  
 ADD CONSTRAINT FK_Persoana_Depozit_Bancar
 FOREIGN KEY   (CodPersoana) REFERENCES Persoana  (CodPersoana ) ;
 
 