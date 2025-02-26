SELECT p.product_name,s.year,s.price
FROM Sales AS s
INNER JOIN Product AS p
    ON s.product_id=p.product_id;

# There are two table one is product and sales.

# The product and sales both are the consisting of product_id.

# But to obtain the product name join is basically done where it is INNER JOIN usual for matches

# The required fields are display on the output.