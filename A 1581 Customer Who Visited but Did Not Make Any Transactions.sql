SELECT Visits.customer_id,count(*) AS count_no_trans
FROM Visits
LEFT JOIN Transactions 
    ON Visits.visit_id=Transactions.visit_id
WHERE Transactions.transaction_id IS NULL
GROUP BY Visits.customer_id;

# As they asked the customer not transaction the both table is joined based visit id left join of visits with transactions 

# And then select the transaction id that null 

# Then it is group and then calculated the count 




SELECT v.customer_id, 
COUNT(*) AS count_no_trans 
FROM Visits v
WHERE NOT EXISTS (
    SELECT 1  
    FROM Transactions t 
    WHERE t.visit_id = v.visit_id  
)
GROUP BY v.customer_id;

#Replaces LEFT JOIN with NOT EXISTS for better performance.

#More efficient indexing and query execution.

#Scales well for large data sizes.
