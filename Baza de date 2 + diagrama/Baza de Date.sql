
Create Table Utilizator(
ID_Utilizator INT AUTO_INCREMENT PRIMARY KEY,
prenume VARCHAR(25),
nume VARCHAR(30),
data_nasterii DATE,
Locul_nasterii VARCHAR(100),
email VARCHAR(80),
Username VARCHAR(50),
cv text,
Fotografie varchar(100)
);
Create table Post(
Id_post int auto_increment primary key,
ID_utilizator int,
Continut text,
titlu varchar(30),
Data_postare datetime,
foreign key (ID_Utilizator) references utilizator (ID_Utilizator)
);
create table Prietenie(
ID_Prietenie int auto_increment primary key,
ID_Utilizator_1 int,
ID_Utilizator_2 int,
Data_Prietenie datetime,
Status_Prietenie enum('acceptare' , 'in asteptare' , 'refuzat'),
foreign key (ID_Utilizator_1) references utilizator(ID_Utilizator),
foreign key (ID_Utilizator_2) references utilizator(ID_Utilizator)
);