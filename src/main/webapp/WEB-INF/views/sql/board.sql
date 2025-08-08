create table board(
idx int primary key auto_increment,
menu_id varchar(30) not null,
title varchar(300) not null,
content text,
writer varchar(12),
regdate date default (current_date),
hit int default 0,
constraint
foreign key
    FK_MENU_ID (menu_id) references menus (menu_id)
);