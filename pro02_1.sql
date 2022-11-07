use myshop1;

create table notice(
	notiNo int primary key auto_increment,
	title varchar(200) not null,
	content varchar(1000) not null,
	author varchar(20) NOT NULL,
	resDate datetime default now()
    );
    
    insert into notice(title, content, author) values ("테스트 공지1", "테스트 내용1", "관리자");
	insert into notice(title, content, author) values ("테스트 공지2", "테스트 내용2", "관리자");
	insert into notice(title, content, author) values ("테스트 공지3", "테스트 내용3", "관리자");
	insert into notice(title, content, author) values ("테스트 공지4", "테스트 내용4", "관리자");    
    insert into notice(title, content, author) values ("테스트 공지5", "테스트 내용5", "관리자");    
    commit;
    
    select * from notice order by notiNo desc;
    delete from notice  where notiNo=14;
    
    select * from custom;
    select * from custom;
    
    create table custom(
	cusId varchar(20) primary key,
	cusPw varchar(20) not null,
	cusName varchar(20) not null,
	address varchar(100) NOT NULL,
    tel varchar(30), 
	regDate datetime default now()
    );
    
insert into custom(cusId, cusPw, cusName, address, tel) values ("admin", "1234", "관리자", "주소", 010-1004-1004);
delete from custom where cusId="admin";

select * from product;

insert into product(cateNo, proName, proSpec, oriPrice, discountRate)  values("Ring", "Craquer Beads Ring ", "하트 모양의 스톤을 크리스탈과 함께 엮어 만든 비즈 반지입니다.", 13500, 5);

drop table product;

alter table product auto_increment = 1;

    create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(50) not null,
	proSpec varchar(1000) NOT NULL,
    oriPrice int not null,
	discountRate double not null,
    proPic varchar(300),
	proPic2 varchar(300)
    );
    
    
create table category(
cateNo int primary key auto_increment,
cateName varchar(50)
);

insert into category(cateName) values("Ring");
insert into category(cateName) values("Earring");
insert into category(cateName) values("Necklace");
insert into category(cateName) values("Bracelet");
insert into category(cateName) values("Hair");
insert into category(cateName) values("Bag");
insert into category(cateName) values("Etc");

select * from category;
commit;

drop table wearing;
create table wearing(
proNo int primary key,
amount int
);