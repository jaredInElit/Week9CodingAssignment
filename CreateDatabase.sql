create database if not exists SocialDatabase;
use SocialDatabase;

drop table if exists comment;
drop table if exists post;
drop table if exists user;

create table user (
	id int(11) not null auto_increment,
	username VARCHAR(30) not null,
	email VARCHAR(30),
	password VARCHAR(124) not null,
	PRIMARY KEY (id)
);

create table post (
	id int not null auto_increment,
	userid int not null,
	post_time datetime not null,
	content VARCHAR(140) not null,
	primary key (id),
	FOREIGN KEY (userid) references user(id)
);

create table comment (
	id int not null auto_increment,
	userid int not null,
	postid int not null,
	content VARCHAR(140) not null,
	comment_time datetime not null,
	primary key (id),
	FOREIGN KEY (userid) references user(id),
	FOREIGN KEY (postid) references post(id)
);