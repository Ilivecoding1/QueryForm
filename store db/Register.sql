create procedure spRegister
(
@Username varchar(100),
@Password Varchar(100)
)
as
begin
insert into UserInfo(Username,Password)values(@Username,@Password)
end

create procedure spLogin
(
@Username varchar(100),
@Password varchar(100)
)
as
begin
select count(*) from UserInfo where Username=@Username COLLATE SQL_Latin1_General_CP1_CS_AS and Password=@Password COLLATE SQL_Latin1_General_CP1_CS_AS 
end
drop procedure spLogin
exec spLogin 'Demo','demo11'

select *from UserInfo