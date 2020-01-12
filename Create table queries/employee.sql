GO

CREATE TABLE employee

(
	employee_id varchar(40) not null,
	name varchar(50) not null,
	username varchar(20) not null,
	password varchar(20) not null,
	email varchar(50) not null,
	contact_no varchar(15) not null,
	session_id varchar(40) null,
	created_on datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT employee_id_pk PRIMARY KEY(employee_id)
 
 )
