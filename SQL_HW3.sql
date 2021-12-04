-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary from employees e
join employees_salary es on e.id = es.employees_id
join salary s on s.id = es.salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary from employees e
join employees_salary es on e.id = es.employees_id
join salary s on s.id = es.salary_id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary from employees e
right join employees_salary es on e.id = es.employees_id
right join salary s on s.id = es.salary_id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary from employees e
right join employees_salary es on e.id = es.employees_id
right join salary s on s.id = es.salary_id
where employee_name is null and monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name, monthly_salary from employees e
left join employees_salary es on e.id = es.employees_id
left join salary s on s.id = es.salary_id
where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name from employees e
join roles_employees re on e.id = re.employees_id
join roles r on r.id = re.roles_id;

-- 7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name from employees e
join roles_employees re on e.id = re.employees_id
join roles r on r.id = re.roles_id
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name from employees e
join roles_employees re on e.id = re.employees_id
join roles r on r.id = re.roles_id
where role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name from employees e
join roles_employees re on e.id = re.employees_id
join roles r on r.id = re.roles_id
where role_name like '%QA engineer%';

-- 10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from employees e
join roles_employees re on e.id = re.employees_id
join roles r on r.id = re.roles_id
where role_name like '%Manual QA engineer%';

-- 11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name from employees e
join roles_employees re on e.id = re.employees_id
join roles r on r.id = re.roles_id
where role_name like '%Automation QA engineer%';

-- 12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, role_name from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary, role_name from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary, role_name from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������

select role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%Java developer%';

-- 16. ������� �������� Python �������������

select role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%Python developer%';

-- 17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary, role_name from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like 'Junior Python developer';

-- 18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary, role_name from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like 'Middle JavaScript developer';

-- 19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary, role_name from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like 'Senior Java developer';

-- 20. ������� �������� Junior QA ���������

select role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like 'Junior%QA engineer';

-- 21. ������� ������� �������� ���� Junior ������������

select AVG(monthly_salary) as avg_junior_sal from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������

select SUM(monthly_salary) as sum_sal_jsdev from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%JavaScript developer%';

-- 23. ������� ����������� �� QA ���������

select MIN(monthly_salary) as min_qa_sal from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%QA engineer%';

-- 24. ������� ������������ �� QA ���������

select MAX(monthly_salary) as max_qa_sal from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%QA engineer%';

-- 25. ������� ���������� QA ���������

select COUNT(role_name) as count_qa_role from roles
where role_name like '%QA engineer';

-- 26. ������� ���������� Middle ������������.

select COUNT(role_name) as count_middle_role from roles
where role_name like '%Middle%';

-- ������� ���������� Middle ������������ ����������� �� ����
-- select role_name, COUNT(role_name) as count_role from roles
-- where role_name like '%Middle%'
-- group by role_name;

-- 27. ������� ���������� �������������

select COUNT(role_name) as count_dev_role from roles
where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.

select SUM(monthly_salary) as sum_sal_dev from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
order by monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where monthly_salary < 2300
order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary from roles r
join roles_employees re on r.id = re.roles_id
join employees e on e.id = re.employees_id
join employees_salary es on es.employees_id = re.employees_id
join salary s on s.id = es.salary_id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;