select *from store_info
select *from document
--dbcc opentran()

--delete from store_info
--truncate table document
--dbcc checkident ('store_info',reseed,0)

create procedure spGetDetails
as
begin
select Fabricator_name,Person_name,Phone,Email,Store_name,Addres,City,States,Pincode,Remarks,doc1_name,doc2_name,doc3_name,doc4_name,doc5_name
from store_info
join document on store_info.Store_id=document.Store_id
end