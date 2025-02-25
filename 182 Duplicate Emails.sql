SELECT email
FROM Person 
GROUP BY email 
HAVING count(email)>1;

# First the grouping is done based on the email 

# Using having clause the count of email is checked if it is more than 1 it is duplicate

# This is an example of GROUP BY and HAVING clause