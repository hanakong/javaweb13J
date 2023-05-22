create table member (
	idx int not null auto_increment, 	    		/* 회원 고유번호 */
	mid varchar(20) not null,   			  		  /* 회원 아이디 중복X */
	pwd varchar(100) not null,   		 		 			/* 회원 비밀번호 (sha-256) */
	nickName varchar(20) not null,   		 		  /* 회원 별명(중복 불허/수정가능) */
	name varchar(20) not null,								/* 회원 성명 */
	tel varchar(15) not null,	             		/* 회원 전화번호 */
	userDel char(2) default 'NO',							/* 회원 탈퇴신청여부(NO:현재 활동중, OK:탈퇴 신청중) */
	level int default 1,											/* 회원등급(0:관리자, 1:준회원 2:정회원 3:우수회원 4:운영자) */
	startDate datetime default now(),					/* 최초 가입일 */
	lastDate datetime default now(),					/* 마지막 접속일 */
	salt char(8) not null,										/* 비밀번호 보안을 위한 해시키 */
	primary key (idx),							      		/* 고유번호 및 회원아이디 중복 불가 */
	unique key (mid)
);

drop table member;

desc member;

select * from member;