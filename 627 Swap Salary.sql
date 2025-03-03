UPDATE Salary
SET sex = CASE
    WHEN sex='f' THEN 'm'
    WHEN sex='m' THEN 'f'
END;

# update salary with two cases on if sex='f' means female change it to 'm' means male and via versa this is an example for case statement problem 


#OR

UPDATE Salary
SET sex = REPLACE(REPLACE(sex, 'f', 'x'), 'm', 'f'), 'x', 'm');

#1.Using 'IF' (MySQL-specific): The 'IF' function checks if sex is 'f', then changes it to 'm', otherwise, it changes 'm' to 'f'.  

# Using REPLACE: This replaces 'f' with a temporary placeholder ('x'), then swaps 'm' to 'f', and finally changes 'x' to 'm', effectively swapping values without conditions.