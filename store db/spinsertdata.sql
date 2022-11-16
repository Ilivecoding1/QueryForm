create procedure spInsertInfo
(
@Fabricator_name varchar(100) =null,
@Phone varchar(10) =null,
@Person_name varchar(100) =null,
@Store_name varchar(100) =null,
@Addres varchar(500) =null,
@City varchar(100) =null,
@States varchar(100) =null,
@Pincode varchar(10) =null,
@Remarks varchar(500) =null,
@doc1_name varchar(500)=null,
@doc1_type varchar(500)=null,
@doc1_size varbinary(max)=null,
@doc1_path varchar(500)=null,
@doc2_name varchar(500)=null,
@doc2_type varchar(500)=null,
@doc2_size varbinary(max)=null,
@doc2_path varchar(500)=null,
@doc3_name varchar(500)=null,
@doc3_type varchar(500)=null,
@doc3_size varbinary(max)=null,
@doc3_path varchar(500)=null,
@doc4_name varchar(500)=null,
@doc4_type varchar(500)=null,
@doc4_size varbinary(max)=null,
@doc4_path varchar(500)=null,
@doc5_name varchar(500)=null,
@doc5_type varchar(500)=null,
@doc5_size varbinary(max)=null,
@doc5_path varchar(500)=null
)
as
begin
begin transaction
insert into store_info(Fabricator_name,Person_name,Phone,Store_name,Addres,City,States,Pincode,Remarks,AddON)values(@Fabricator_name,@Person_name,@Phone,@Store_name,@Addres,@City,@States,@Pincode,@Remarks,GETDATE())
begin transaction
declare @storeid int
set @storeid=scope_identity()
insert into document(Store_id,doc1_name,doc1_type,doc1_size,doc1_path,doc2_name,doc2_type,doc2_size,doc2_path,doc3_name,doc3_type,doc3_size,doc3_path,doc4_name,doc4_type,doc4_size,doc4_path,doc5_name,doc5_type,doc5_size,doc5_path)values(@storeid,@doc1_name,@doc1_type,@doc1_size,@doc1_path,@doc2_name,@doc2_type,@doc2_size,@doc2_path,@doc3_name,@doc3_type,@doc3_size,@doc3_path,@doc4_name,@doc4_type,@doc4_size,@doc4_path,@doc5_name,@doc5_type,@doc5_size,@doc5_path)
commit transaction
commit transaction
end

--select *from store_info
--select *from document