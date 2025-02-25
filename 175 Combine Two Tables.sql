SELECT Person.firstName, Person.lastName,Address.city,Address.state
FROM Person
LEFT JOIN Address 
    ON Person.personId=Address.personId;

# Select Person.firstName, Person.lastName,Address.city,Address.state-> this is used to get the needed column from Person and Address table 

# After joining the Address and person using person id in both table this select statement is used

# person and address is used for join that is left join on person id

#left join will add all the details of the person along with address from another table if there is any matching of personId or else it will show NULL