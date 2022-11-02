create database myshop1;
commit;

use myshop1;
create table custom(cusId varchar(20) primary key,
	cusPw varchar(100) not null,
	cusName varchar(50) not null,
	address varchar(200) not null,
	tel varchar(20) not null,
    regDate date default '0000-00-00',
	point int default 0,
	level int default 0,
	visited int default 0);
    
show tables;

insert into notice(title, content, author) values('제목1', '안냐세용', 'admin');