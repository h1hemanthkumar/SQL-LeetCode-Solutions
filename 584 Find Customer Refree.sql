SELECT name 
FROM Customer
WHERE referee_id!=2 OR referee_id IS NULL;

# The select statement is to print the specific column.

# The condition specified say the referee_id!=2 provided condition but this condition only check of numeric value but even though if it null it returns the name of that row hence the another condition is mention that is IS NULL 