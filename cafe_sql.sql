create database cafe;

use cafe;

create table cafe_kind_no(
	cafe_no int(5) primary key not null,
	cafe_no_name varchar(30) not null
);

create table cafe_menu(
	cafe_name varchar(60) primary key NOT NULL,
	cafe_no int(5) NOT NULL,
	cafe_menu_num int(10) NOT NULL,
	cafe_point int(10) NOT NULL,
	foreign key(cafe_no) references cafe_kind_no(cafe_no)
);

create table cafe_user_info(
	user_id varchar(40) not null primary key,
	user_phone varchar(40) not null ,
	user_point int(20) not null ,
	user_event int(2) not null
);

create table cafe_sale(
	sale_id varchar(40) not null primary key,
	user_id varchar(40) not null,
	user_pay varchar(40)  not null,
	foreign key(user_id) references cafe_user_info(user_id)
);


create table cafe_order(
	sale_id varchar(50) not null,
	cafe_name varchar(60) not null,
	cafe_count int(10) not null,
	foreign key(sale_id) references cafe_sale(sale_id),
	foreign key(cafe_name) references cafe_menu(cafe_name)
);


	