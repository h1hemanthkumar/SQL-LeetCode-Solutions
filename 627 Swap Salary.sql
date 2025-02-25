UPDATE Salary
SET sex = CASE
    WHEN sex='f' THEN 'm'
    WHEN sex='m' THEN 'f'
END;

# update salary with two cases on if sex='f' means female change it to 'm' means male and via versa this is an example for case statement problem 