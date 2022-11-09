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
    
    alter table product add column amount int;
    
drop table category;
create table category(
cateNo int primary key auto_increment,
cateName varchar(50)
);

insert into category(cateName) values("RING");
insert into category(cateName) values("EARRING");
insert into category(cateName) values("NECKLACE");
insert into category(cateName) values("HAIR");
insert into category(cateName) values("KEYRING");

select * from category;
select * from product;
commit;

drop table wearing;

select * from wearing;
select * from product;

alter table category rename column "Bracelet" to 
select * from category;

create table wearing(
proNo int primary key,
amount int
);

-- 결제테이블 추가
create table payMent(
salePayNo int primary key auto_increment, 
payMethod varchar(30)  not null,
payCom varchar(50)  not null,
cardNum varchar(40)  not null,
payAmount int not null);

select * from parsel;
select * from sales;

alter table parsel add column balecode int;


-- 배송테이블 추가
create table parsel(
parselNo int primary key auto_increment,
parselAddr varchar(500),
cusTel varchar(14),
parselCompany varchar(50),
parselTel varchar(20),
parselState int default 0);

-- 결제 테이블 추가
create table sales(
saleNo int primary key auto_increment,
cusId varchar(13) not null,
proNo int not null,
amount int not null,
saleDate datetime default now(),
parselNo int,
salePayNo int);

alter table sales add column parselState int default 0;

alter table sales drop column parselState;

rollback;

update parsel set parselCompany = '대한통운', paresltel = 01045789303, parselstate=0, balecode=666633337777  where parselNo=1;