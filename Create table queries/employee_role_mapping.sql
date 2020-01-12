GO
CREATE TABLE employee_role_mapping(
	 mapping_id varchar(40) NOT NULL,
	 employee_id varchar (40) NOT NULL,
	 role_id int NOT NULL,
	 created_on datetime  NULL,
 CONSTRAINT  mapping_id_pk  PRIMARY KEY (mapping_id),
 CONSTRAINT employee_id_fk2 FOREIGN KEY(employee_id)
 REFERENCES employee(employee_id),
 CONSTRAINT role_id_fk FOREIGN KEY(role_id)
 REFERENCES employee_role(role_id),


 )

