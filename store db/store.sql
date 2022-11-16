--drop table store_info
create table store_info(Store_id int identity(1,1) Primary key,
Fabricator_name varchar(100) null,
Person_name varchar(100) null,
Phone varchar(10) null,
Email varchar(100) null,
Store_name varchar(100) null,
Addres varchar(500) null,
City varchar(100) null,
States varchar(100) null,
Pincode varchar(100) null,
Remarks varchar(500) null,
AddON datetime
)