delimiter //
create procedure e_name(IN  full_name varchar(100))
begin
select first_name, last_name from employees where first_name = full_name
or last_name = full_name;
end
//
delimiter ;



delimiter //
create procedure c_avg(IN em_id char(4))
begin
select avg(salaries.salary) from salaries
join dept_emp on salaries.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_no = em_id;
end
//
delimiter ;


delimiter //
create procedure gender(IN gen char(1))
begin
select count(emp_no) from employees where gender = gen ; 
end
//
delimiter ;

