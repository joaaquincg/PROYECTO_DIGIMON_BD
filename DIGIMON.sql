
-- ____________________________________________________________________

create database DIGIMON_BD;
use DIGIMON_BD;

CREATE TABLE PLAYER (
NAME_J VARCHAR(20),
PASSWD VARCHAR(32) NOT NULL,
MATCH_WIN INT NOT NULL,
MATCH_PLAY INT NOT NULL,
constraint JU_PK primary KEY( NAME_J)
);

CREATE TABLE DIGIMON(
ID_DIGIMON int,
NAME_Digi varchar(25) unique,
ID_EVOLUTION int unique not null,
ATTACK  INT NOT NULL,
DEFENSE INT NOT NULL,
TYPE_DIGI INT NOT NULL,
LVL INT ,
constraint DIG_PK primary key (ID_DIGIMON)
);
/*
He creado el campo campo del id_evolucion para poder asociarlo a su proxima digievolucion,
ya que se puede definir al crear un digimon nuevo.
*/

CREATE TABLE TENER_DIGI(
NAME_J VARCHAR(20),
NAME_Digi VARCHAR(20),
Is_In_TEAM bool,
constraint TD_PK PRIMARY KEY ( NAME_J,NAME_Digi)
);

alter table TENER_DIGI
add constraint TD_JU_FK foreign key (NAME_J ) references PLAYER (NAME_J );

alter table TENER_DIGI
add constraint TD_DI_FK foreign key (NAME_Digi ) references DIGIMON (NAME_Digi );






