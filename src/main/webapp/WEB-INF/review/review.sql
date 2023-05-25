create table review (
	idx int not null auto_increment primary key,
	mid varchar(20) not null,
	nickName varchar(20) not null,
	content text not null,
	hostIP varchar(40) not null,
	wDate datetime default now(),
	photoImg varchar(50),
	foreign key(mid) references member(mid)
);