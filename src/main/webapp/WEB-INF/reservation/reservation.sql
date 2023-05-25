create table reservationInfo (
	idx int not null auto_increment primary key,
	title varchar(40) not null,
	content text not null,
	reservNum int default 0,
	progress varchar(10) default '모집중',
	startDate datetime default now(),
	endDate datetime default now(),
	popup char(2) default 'OK',
	photo varchar(100)
);

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