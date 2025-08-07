create database board;

use board;

create table menus(
MENU_ID varchar(10) not null,
MENU_NAME varchar(20) not null,
MENU_SEQ int not null
);

insert into menus (MENU_ID, MENU_NAME, MENU_SEQ) values ("MENU01","HTML",1),("MENU02","CSS",2),("MENU03","JAVASCRIPT",3);

