SELECT Visits.customer_id,count(*) AS count_no_trans
FROM Visits
LEFT JOIN Transactions 
    ON Visits.visit_id=Transactions.visit_id
WHERE Transactions.transaction_id IS NULL
GROUP BY Visits.customer_id;

# As they asked the customer not transaction the both table is joined based visit id left join of visits with transactions 

# And then select the transaction id that null 

# Then it is group and then calculated the count 