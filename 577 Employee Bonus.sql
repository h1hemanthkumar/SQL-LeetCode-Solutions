SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus
    ON Employee.empId=Bonus.empId
WHERE Bonus.bonus<1000 OR Bonus.bonus IS NULL;

# The select statement or output consisting of two column name and bonus of different table

# As we need to have the employee with there bonus so left join is performed

# And then we need to select the bonus that is less than 100 and also null should also be display that means 0 value.



#OR

SELECT name, 
       (SELECT bonus 
        FROM Bonus 
        WHERE Bonus.empId = E.empId) AS bonus
FROM Employee As E
WHERE empId IN (SELECT empId FROM Bonus WHERE bonus < 1000) 
   OR empId NOT IN (SELECT empId FROM Bonus);

#The subquery inside SELECT fetches the bonus for each employee based on empId.

#The WHERE clause ensures only employees with a bonus < 1000 or no bonus at all are selected.

#The NOT IN condition includes employees missing from the Bonus table.

#However, NOT IN can cause issues with NULL values, so using LEFT JOIN is generally preferred for better efficiency.






