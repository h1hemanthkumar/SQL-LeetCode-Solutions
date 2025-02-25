SELECT emp1.name AS Employee 
FROM Employee AS emp1
INNER JOIN Employee AS emp2
    ON emp1.managerId=emp2.id
WHERE emp1.salary>emp2.salary;

# This is an example of self join where the same employee table are join on condition with manager id and employee id to get the details of the manager as well and then salary of employee is checked with the salary of the manager.