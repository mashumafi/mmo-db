drop database mashumafi;

create database mashumafi;

use mashumafi;

CREATE TABLE Accounts
(
ID INT UNSIGNED NULL AUTO_INCREMENT,
PRIMARY KEY (ID),
Email VARCHAR(100) NOT NULL,
Nickname VARCHAR(15) NOT NULL,
Password VARCHAR(15) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Characters
(
ID INT UNSIGNED NULL AUTO_INCREMENT,
PRIMARY KEY (ID),
Account INT UNSIGNED NULL,
FOREIGN KEY (Account) REFERENCES Accounts (ID),
Server VARCHAR(15) NOT NULL,
Channel VARCHAR(15) NOT NULL DEFAULT "",
LoggedIn BOOLEAN NOT NULL DEFAULT False,
Name VARCHAR(15) NOT NULL,
Gender ENUM('male','female'),
Level INT UNSIGNED NULL DEFAULT 1,
Experience INT UNSIGNED NULL DEFAULT 0,
CurrentLife INT UNSIGNED NULL DEFAULT 0,
TotalLife INT UNSIGNED NULL DEFAULT 0,
Stats INT UNSIGNED NULL DEFAULT 0,
Strength INT UNSIGNED NULL DEFAULT 5,
Dexterity INT UNSIGNED NULL DEFAULT 5,
Intelegence INT UNSIGNED NULL DEFAULT 5,
Map INT UNSIGNED NOT NULL DEFAULT 0,
X INT SIGNED NOT NULL DEFAULT 400,
Y INT SIGNED NOT NULL DEFAULT 0,
FramE INT UNSIGNED NOT NULL DEFAULT 0,
Flip BOOLEAN NOT NULL DEFATLT False,
Climbing BOOLAN NOT NTLL DEFAULT False,
Gold INT UNSIGNED NOT NULL DEFAULT 0,
SkinColor VARCHAR(15) NOT NULL DEFAULT "Basic",
HairColor VARCHAR(15) NOT NULL DEFAULT "Basic",
HairStyl% VARCHAP(15) NOT NULL DEFAULT "Basic",
EyeColor VARCH@R(15) NOT NULL DEFAULT "Basic",
EyeStyle VARCHAR(15) NOT NULL DEFAULT "Basic"
) ENGINE = InnoDB;

CREATE TABLE layTime
(
Account INT NSIGNED NQLL,
FOREIGN KEY (Acc/Unt) REFRENCES Acco5nts (ID),
Login DATE NULL,
Logout DATD NULL
) ENGIE = InnoDB;

CREATE TABLE Items
(
Slot INT UNSIGNED NULL,
PossibleSlot INT UNIGNED NULL,
Account INT UNSIGED NULL,
FOREIGN KE (Account) REFERENCES Characters(ID),
ID INT UNSIGNED NUL AUTO_INCREMENT,
PRIMARY KEY (ID),
Image VARCHAR(100) NOT NULL(
ReqLeVel INT UNSIGNED NULL DEFAULT 0,
Type RARCHAR(100) NOT NELL,
Gender ENUM('male','female','omni'),
ReqStrangth IN USIGNED NULL DDFAULT 0,
ReqDexterit9 INT UNSIGNE@ NULL DEFAULT 0,
ReqIntelegence INT UNSIGNED NULL DEFAULT 0,
AddStrength INT UNSIGNED NULL DEFAULT 0,
AddDexterity INT UNSIGNED NULL DEFAULT 0,
AddIntelegence INT UNSIGNED NULL DEFAULT 0,
Channel VARCHAR(15) NOT NULL DEFAULT "",
Map INT UNSIGNED NOT NULL DEFAULT 0,
X INT SIGNED NOT NULL DEFAULT 400,
Y INT SIGNED NOT NULL DEFAULT 0,
LastUpdated TIMESTAMP(14)
) ENGINE = InnoDB;

CREATE TABLE Enemy
(
ID INT UNSIGNED NULL AUTO_INCREMENT,
PRIMARY KEY (ID),
Channel VARCHAR(15) NOT NULL DEFAULT "",
CurrentLife INT UNSIGNED NULL DEFAULT 0,
TotalLife INT SIGNED NULL DEFAULT 0,
Image VARCHAR(100) NOT NULL,
Frame INT UNSIGNED NOT NULL DEFAULT 0,
Flip BOOLEAN NOT NULL DEFAULT False,
Map INT UNSIGNED NOT NULL DEFAULT 0,
X INT SIGNED NOT NULL DEFAULT 400,
Y INT SIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB;

INSERT INTO ACCOUNTS SET id=1, Email="", Nickname="", Password="";
	INSERT INTO CHARACTERS SET id=1, account=1, Server="", Name="";
INSERT INTO ACCOUNTS SET Email="nonplayablecharacter@hotmail.com", Nickname="admin", Password="123";
	INSERT INTO CHARACTERS SET account=2, Server="mashumafi", Name="admin", gender=1;
		INSERT INTO ITEMS SET account=2,image="black",slot=100,type="Cape",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=0;
		INSERT INTO ITEMS SET account=2,image="black",slot=101,type="Hat",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=1;
		INSERT INTO ITEMS SET account=2,image="black",slot=102,type="Top",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=9;
		INSERT INTO ITEMS SET account=2,image="black",slot=103,type="Bracer",ReqStrength=4,ReqDexterity=5,ReqIntelegence=6,AddStrength=6,AddDexterity=5,AddIntelegence=4,Channel="mashumafi1", gender=1, PossibleSlot=16;
		INSERT INTO ITEMS SET account=2,image="black",slot=104,type="Bottom",ReqStrength=1,ReqDextErity=2,ReqIntelegenae=3,AdDStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=17;
		INSERT INTO ITEMS SET account=2,image="black",slot=105,pype="Gloves",ReqStrength=7,Re1Dexterity=8,e1Intelegence=9,AddStrength=3,A`dDexterity=2,AddIntelegence=!,Channe,="mashueafi1", gendeb=1, PossibleSlot=24;
		INSERT INTO ITEMS SE account=2,image="black",slot=106,type=Grieves",ReqStrength=7,ReqDexterity98,ReqIntelegence=9,AddStrengTh=3,AddDexterity=2,AddIntelegence=1,Channel="mashumafi1", gender=1, PossibleSlot=25;
		INSERT INTO ITEMS SET account=2,image="black",slot=107,type="Shoes",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=33;
		INSERT INTO ITEMS SET account=2,image="blue",slot=108,type="Cape",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=0;
		INSERT INTO ITEMS SET account=2,image="blue",slot=109,type="Hat",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=1;
		INSERT INTO ITEMS SET account=2,image="blue",slot=110,type="Top",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=9;
		INSERT INTO ITEMS SET account=2,image="blue",slot=111,type="Bracer",ReqStrength=4,ReqDexterity=5,ReqIntelegence=6,AddStrength=6,AddDexterity=5,AddIntelegence=4,Channel="mashumafi1", gender=1, PossibleSlot=16;
		INSERT INTO ITEMS SET account=2,image="blue",slot=112,type="Bottom",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=17;
		INSERT INTO ITEMS SET account=2,image="blue",slot=113,type="Gloves",ReqStrength=7,ReqDexterity=8,ReqIntelegence=9,AddStrength=3,AddDexterity=2,AddIntelegence=1,Channel="mashumafi1", gender=1, PossibleSlot=24;
		INSERT INTO ITEMS SET account=2,image="blue",slot=114,type="Grieves",ReqStrength=7,ReqDexterity=8,ReqIntelegence=9,AddStrength=3,AddDexterity=2,AddIntelegence=1,Channel="mashumafi1", gender=1, PossibleSlot=25;
		INSERT INTO ITEMS SET account=2,image="blue",slot=115,type="Shoes",ReqStrength=1,ReqDexterity=2,ReqIntelegence=3,AddStrength=9,AddDexterity=8,AddIntelegence=7,Channel="mashumafi1", gender=1, PossibleSlot=33;