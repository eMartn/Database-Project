# 1 Compound Operator 
# Shows users whos current location is in Georgia and budget is above $30.00
SELECT username, Current_Location, Budget  FROM USER
WHERE Current_Location LIKE "%Georgia%" && Budget > 30.00 ; 

# 2 Sub-queries




# 3 Inner join
# Displays the details of a restaurant and the rating given to them as well as the review text 
SELECT R.RestaurantName, Location, Specialty, Category, RatingGiven, Review_Text FROM restaurant AS R INNER JOIN REVIEW RE
WHERE R.RestaurantName = RE.RestaurantName;

# 4 Outer join



# 5 Views
# Creates a view that shows all users with a current location in Georgia & displays their credibility  
CREATE VIEW Georgia_Customers AS SELECT Username, Credibility
FROM USER
WHERE Current_Location LIKE '%Georgia%'; 


# 6 Built-in functions
# Displays the average budget of people who live in Atlanta, Georgia 
SELECT  Current_Location, ROUND(AVG(Budget),2) AS Averge_Budgetn FROM USER
WHERE Current_Location = 'Atlanta, Georgia';

# 7 Computed Column



