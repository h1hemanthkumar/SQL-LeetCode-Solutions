SELECT max(salary) AS SecondHighestSalary 
FROM Employee
WHERE salary < (
    SELECT max(salary)
    FROM Employee
);

# the inner query "SELECT max(salary) FROM Employee" this will select the maximum salary and returns it 

# the outer query "SELECT max(salary) AS SecondHighestSalary  FROM Employee WHERE salary < (INNER Query)" this will select the salary that is maximum but lesser the max salary returned from inner query