SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus
    ON Employee.empId=Bonus.empId
WHERE Bonus.bonus<1000 OR Bonus.bonus IS NULL;

# The select statement or output consisting of two column name and bonus of different table

# As we need to have the employee with there bonus so left join is performed

# And then we need to select the bonus that is less than 100 and also null should also be display that means 0 value.


SELECT Employee.name, COALESCE(Bonus.bonus, 0) AS bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empId = Bonus.empId
WHERE COALESCE(Bonus.bonus, 0) < 1000;

#COALESCE(Bonus.bonus, 0): This function will return the value of Bonus.bonus if it's not NULL. If it is NULL, it will return 0.

#The WHERE clause filters out employees with a bonus less than 1000 (or zero if they don’t have a bonus).