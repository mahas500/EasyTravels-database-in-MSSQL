GO

CREATE TABLE package

(

package_id varchar(40) not null,
employee_id varchar(40) not null,
package_display_name varchar(100) not null,
unique_url_name varchar (50) not null UNIQUE,
days int not null,
night int not null,
charges varchar (30) not null,
country varchar (30) not null,
city varchar (30) not null,
valid DateTime not null,
iternary xml not null,
created_on datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,

CONSTRAINT package_id_pk PRIMARY KEY(package_id),
CONSTRAINT employee_id_fk FOREIGN KEY(employee_id)
REFERENCES employee(employee_id)

)
