SELECT DISTINCT author_id AS id
FROM Views 
WHERE author_id=viewer_id
ORDER BY author_id;

# Distinct author name is selected because he may viewed his own article many time 

# As mentioned in the problem statement that author_id=viewer_id then author wrote the book is reading the same book

# Mentioned to order by author id so ordered