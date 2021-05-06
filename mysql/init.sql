create database if not exists mydb;

use mydb;

create table if not exists accounts
(
	id int unsigned auto_increment
		primary key,
	login varchar(255) not null,
	balance bigint default 0 not null,
	created_at timestamp default now()
) collate=utf8mb4_unicode_ci;

insert into accounts (login, balance) values ('petya', 1000);
insert into accounts (login, balance) values ('vasya', 2000);
insert into accounts (login, balance) values ('mark', 500);

