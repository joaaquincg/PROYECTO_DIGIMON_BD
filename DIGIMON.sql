
-- ____________________________________________________________________

create database DIGIMON_BD2;
use DIGIMON_BD2;

CREATE TABLE PLAYER (
NAME_J VARCHAR(20),
PASSWD VARCHAR(32) NOT NULL,
MATCH_WIN INT NOT NULL,
MATCH_PLAY INT NOT NULL,
constraint PK_PL primary KEY( NAME_J)
);

CREATE TABLE DIGIMON(
ID_DIGIMON int,
NAME_Digi varchar(25) unique,
ID_EVOLUTION int  not null,
ATTACK  INT NOT NULL,
DEFENSE INT NOT NULL,
TYPE_DIGI INT NOT NULL,
LVL INT ,
constraint PK_DIGI primary key (ID_DIGIMON)
);

alter table DIGIMON 
ADD constraint FK_DIGI FOREIGN KEY (ID_EVOLUTION) references DIGIMON(ID_DIGIMON);


/*
He creado el campo campo del id_evolucion para poder asociarlo a su proxima digievolucion,
ya que se puede definir al crear un digimon nuevo.
*/

CREATE TABLE HAV_DIGI(
NAME_J VARCHAR(20),
NAME_Digi VARCHAR(20),
Is_In_TEAM bool not null ,
constraint TD_PK PRIMARY KEY ( NAME_J,NAME_Digi)
);

alter table HAV_DIGI
add constraint FK_HV_PL foreign key (NAME_J ) references PLAYER (NAME_J );

alter table HAV_DIGI
add constraint FK_HV_DI foreign key (NAME_Digi ) references DIGIMON (NAME_Digi );




