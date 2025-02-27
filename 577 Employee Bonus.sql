SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus
    ON Employee.empId=Bonus.empId
WHERE Bonus.bonus<1000 OR Bonus.bonus IS NULL;

# The select statement or output consisting of two column name and bonus of different table

# As we need to have the employee with there bonus so left join is performed

# And then we need to select the bonus that is less than 100 and also null should also be display that means 0 value.