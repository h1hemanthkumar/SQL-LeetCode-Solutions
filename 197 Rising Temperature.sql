SELECT w1.id
FROM Weather w1
JOIN Weather w2
    ON DATEDIFF(w1.recordDate,w2.recordDate)=1
WHERE w1.temperature>w2.temperature;

# First the output required is id so we selected the id .

# We next self join based on the date that is having 1 this help to get the previous day information in single table so we use function called DATEDIFF().

# Next we need to check whether that is greater than the temperature of the previous day.