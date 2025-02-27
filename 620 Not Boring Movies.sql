SELECT id,movie,description,rating
FROM Cinema 
WHERE MOD(id,2)=1 AND 
description NOT LIKE 'boring'
ORDER BY rating DESC;

# The id with the odd value is selected using aggregate function MOD(value,divisor) and checked whether is boaring.

# Ordered it by rating in desc order and then display the details or specified column.