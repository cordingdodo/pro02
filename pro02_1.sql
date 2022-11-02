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
    delete from notice  where notiNo=7;
    
    select * from custom;
    
    create table custom(
	cusId varchar(20) primary key,
	cusPw varchar(20) not null,
	cusName varchar(20) not null,
	address varchar(100) NOT NULL,
    tel varchar(30), 
	regDate datetime default now()
    );