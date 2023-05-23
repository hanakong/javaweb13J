select * from member;

create table board (
	idx int not null auto_increment,	/* 게시글의 고유번호 */
	mid varchar(20) not null,					/* 게시글 올린이 아이디 */
	nickName varchar(20) not null,		/* 게시글 올린이 닉네임 */
	title varchar(100) not null,			/* 게시글 제목 */
	content text not null,						/* 게시글 내용 */
	readNum int default 0,						/* 글 조회수 */
	hostIP varchar(40) not null,			/* 글 올린이의 IP */
	wDate datetime  default now(),		/* 글 올린 날짜/시간 */
	primary key(idx),
	foreign key(mid) references member(mid)
);

create table boardReply (
	idx int not null auto_increment,		        	/* 댓글의 고유번호 */
  boardIdx int not null,							        	/* 원본글의 고유번호(외래키로 지정) */
  mid		varchar(20) not null,					        	/* 댓글올린이의 아이디 */
  nickName varchar(20) not null,			        	/* 댓글올린이의 닉네임 */
  content text not null,							        	/* 댓글 내용 */
  hostIP  varchar(50)  not null,			        	/* 댓글 올린 PC의 고유 IP */
  wDate		datetime default now(),			        	/* 댓글 올린 날짜 */
  primary key(idx),										        	/* 기본키 : 고유번호 */
  foreign key(boardIdx) references board(idx)		/* 외래키 설정 */
);

drop table board;
drop table boardReply;