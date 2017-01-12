use test;

CREATE TABLE tblSpringBoard(
	seq			int		primary key auto_increment,
	title		varchar(50),
	content		varchar(4000),
	writer		varchar(50),
	regdate		varchar(20),
	hitcount	int,
	password	varchar(10)
);

insert into tblSpringBoard(title, content, writer, regdate,
	hitcount, password) values('aaa', 'aaaa', '홍길동', now(), 
	0, '1111');

insert into tblSpringBoard(title, content, writer, regdate,
	hitcount, password) values('bbb', 'bbbb', '임꺽정', now(), 
	0, '1111');
	
insert into tblSpringBoard(title, content, writer, regdate,
	hitcount, password) values('ccc', 'cccc', '신돌석', now(), 
	0, '1111');
	
	
	
	
	
	
	
	
	
	
	
	