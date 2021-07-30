create table ToonMember(
mem_id varchar2(10) not null unique,
mem_nick varchar2(10) not null,
mem_pw varchar2(15) not null,
mem_file varchar2(100),
constraint mem_pk primary key(mem_nick));

create table Genre(
gen_genre varchar2(10) not null,
constraint gen_pk primary key(gen_genre));


create table Webtoon(
web_title varchar2(20) not null,
web_genre varchar2(10) not null,
web_view number not null,
web_writer varchar2(15) not null,
web_platform varchar2(10) not null,
web_day varchar2(5),
web_story varchar2(500) not null,
web_file varchar2(100) not null,
web_address varchar2(200) not null,
web_state varchar2(5) not null,
constraint web_pk primary key(web_title))
alter table Webtoon add constraint web_gen_fk foreign key(web_genre)
references Genre(gen_genre);


create table Bookmark(
bm_nick varchar2(10) not null,
bm_title varchar2(20) not null,
bm_genre varchar2(10) not null,
constraint bm_pk primary key(bm_nick),
constraint bm_mem_fk foreign key(bm_nick)
references ToonMember(mem_nick),
constraint bm_web_fk foreign key(bm_title)
references Webtoon(web_title),
constraint bm_gen_fk foreign key(bm_genre)
references Genre(gen_genre));

create table Board(
board_num number not null,
board_nick varchar2(10) not null,
board_title varchar2(50) not null,
board_con varchar2(200) not null,
board_date date not null,
constraint board_pk primary key(board_num),
constraint board_fk foreign key(board_nick) references ToonMember(mem_nick));

create table Review(
rev_num number not null,
rev_nick varchar2(10) not null,
rev_title varchar2(20) not null,
rev_con varchar2(50) not null,
rev_score number not null,
rev_date date not null,
constraint rev_pk primary key(rev_num),
constraint rev_mem_fk foreign key(rev_nick)
references ToonMember(mem_nick),
constraint rev_web_fk foreign key(rev_title)
references Webtoon(web_title));

create table Recommand(
recom_num number not null,
recom_nick varchar2(10) not null,
recom_title varchar2(20) not null,
recom_genre varchar2(10) not null,
recom_con varchar2(50) not null,
recom_date date not null,
constraint recom_pk primary key(recom_num),
constraint recom_mem_fk foreign key(recom_nick)
references ToonMember(mem_nick),
constraint recom_web_fk foreign key(recom_title)
references Webtoon(web_title),
constraint recom_gen_fk foreign key(recom_genre)
references Genre(gen_genre));

create sequence board_seq
increment by 1
start with 1
nomaxvalue
minvalue 1
nocycle;

create sequence recom_seq
increment by 1
start with 1
nomaxvalue
minvalue 1
nocycle;

create sequence rev_seq
increment by 1
start with 1
nomaxvalue
minvalue 1
nocycle;


