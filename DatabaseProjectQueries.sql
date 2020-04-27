# 1 Compound Operator 
# Shows users whose current location is in Georgia and budget is above $30.00
SELECT username, Current_Location, Budget  FROM USER
WHERE Current_Location LIKE "%Georgia%" && Budget > 30.00 ; 

# 2 Sub-queries
# Displays restaurants which actually provide a delivery service
SELECT RestaurantName, Phone_Number, Specialty, Avg_Rating, Days_Of_Operation, Hours_Of_Operation
FROM restaurant
WHERE RestaurantName IN (SELECT RestaurantName
						 FROM delivery_service
						 WHERE Fee IS NOT NULL);

# 3 Inner join
# Displays the details of a restaurant and the rating given to them as well as the review text 
SELECT R.RestaurantName, Location, Specialty, Category, RatingGiven, Review_Text 
FROM restaurant AS R INNER JOIN REVIEW AS RE
WHERE R.RestaurantName = RE.RestaurantName;

# 4 Outer join
# Displays Restaurant's name, specialty, and average rating as well as how much their delivery service costs and its hours,
# if they have one.
SELECT R.RestaurantName, Specialty, Avg_Rating, Fee, Available_Hours
FROM Restaurant AS R
LEFT OUTER JOIN delivery_service AS DS
ON R.RestaurantName = DS.RestaurantName;



# 5 Views
# Creates a view that shows all users with a current location in Georgia & displays their credibility  
CREATE VIEW Georgia_Customers AS SELECT Username, Credibility
FROM USER
WHERE Current_Location LIKE '%Georgia%'; 


# 6 Built-in functions
# Displays the average budget of people who live in Atlanta, Georgia 
SELECT  Current_Location, ROUND(AVG(Budget),2) AS Average_Budget 
FROM User
WHERE Current_Location = 'Atlanta, Georgia';

# 7 Computed Column
# Displays the remaining budget of user Exodia after they were to pay delivery for restaurant Burgatory
SELECT Username, Budget, RestaurantName, Fee, round(sum(Budget - Fee), 2) AS BudgetAfterFee
FROM User AS U INNER JOIN delivery_service as DS
WHERE RestaurantName = 'Burgatory' AND Username = 'Exodia'
GROUP BY Username;


