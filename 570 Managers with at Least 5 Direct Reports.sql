SELECT name 
FROM Employee 
WHERE id IN (
    SELECT managerId 
    FROM Employee 
    GROUP BY managerId
    HAVING count(*)>=5
);

# First the subquery will provide the list of manager that is monitoring more than 5 employee 

# Second printing the name of employee or manager who guided 5 employee or more