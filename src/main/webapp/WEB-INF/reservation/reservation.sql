create table reservationInfo (
	idx int not null auto_increment primary key,
	reservNum int default 0, 				-- 예약인원  
	price int default 0,
	title varchar(40) not null,
	photo varchar(100),
	startDate datetime default now(),
	endDate datetime default now(),
	content text not null,
	progress varchar(10) default '진행중'
);
drop table reservationInfo;

create table reservation (
	idx int not null auto_increment primary key,
	reservInfoIdx int not null,
	-- memberIdx int not null,
	mid varchar(20) not null unique key, 
	reservNum int default 1,
	reservDate datetime default now(),
	rcDate datetime default now(),
	reservFlag varchar(10) default '예약완료'
	foreign key(reservInfoIdx) references reservationInfo(idx)
	foreign key(mid) references member(mid)
);