show tables;

create table board (
	idx  int not null auto_increment,	/* 게시글의 고유번호 */
	mid  varchar(20) not null,				/* 게시글 올린이 아이디 */
	nickName varchar(20) not null,		/* 게시글 올린이 닉네임 */
	title varchar(100) not null,			/* 게시글 제목 */
	content text not null,						/* 게시글 내용 */
	hostIp	varchar(40) not null,			/* 글 올린이 IP */
	openSw	char(2) default 'OK',			/* 게시글 공개여부(OK:공개, NO:비공개) */
	readNum int default 0,						/* 글 조회수 */
	wDate   datetime default now(),		/* 글 올린 날짜 */
	good    int default 0,						/* '좋아요' 클릭 횟수 누적 */
	complaint char(2) default 'NO',		/* 신고글 유무(정상글:NO, 신고당한글:OK) */
	primary key(idx),
	foreign key(mid) references member(mid)	/* 외래키 설정 */
);
drop table board;
desc board;

insert into board values (default,'admin','관리맨','게시판 서비시 개시','게시판서비스를 시작합니다. 많은 관심 부탁드려요.', '192.168.50.20',default,default,default,default,default);

select * from board;
