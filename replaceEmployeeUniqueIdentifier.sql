/*1378. Replace Employee ID With The Unique Identifier*/
select employeeUNI.unique_id , employees.name from employees left join employeeUNI on Employees.id = EmployeeUNI.id