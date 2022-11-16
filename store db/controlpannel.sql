select *from UserInfo
--alter table UserInfo add active int default(1)
--update UserInfo set active=1 where Userid=2
--select Username,Password,case when active=1 then 'Active' else 'Not Active' end as ustatus from UserInfo order by Username
--select Userid,Username from UserInfo order by Username


create procedure UpdatePassword
(
@Userid int,
@uPassword varchar(50)
)
as
begin
update UserInfo set Password=@uPassword where Userid=@Userid
end
drop procedure UpdateStaus
create procedure UpdateStaus
(
@Userid int,
@uStatus int
)
as
begin
update UserInfo set active=@uStatus where Userid=@Userid
end