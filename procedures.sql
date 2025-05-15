
select * from emmp;

create procedure myprosedure @T_emp_id nvarchar(30),@T_emp_ssn nvarchar(30)
as
select * from emmp
where employee_id=@T_emp_id
AND ssn_no = @T_emp_ssn ;

execute myprosedure @T_emp_id = 1 ,@T_emp_ssn = 12345;
execute myprosedure @T_emp_id = 3; 