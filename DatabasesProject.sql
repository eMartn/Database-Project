USE database2;

CREATE TABLE Restaurant(
RestaurantName varchar(50) Primary Key,
Avg_Rating int,
Location varchar(45),
Phone_Number char(12),
Specialty varchar(25),
Category varchar(25),
Days_Of_Operation varchar(25),
Hours_Of_Operation varchar(25),
Monetary_Tier varchar(25),
Vegetarian_Option varchar(3),
Self_Serve varchar(3),
Vegan_Option varchar(3),
Reservation_Required varchar(3),
Restaurant_Chain varchar(3),
Capacity INT,
Parking_Capacity INT,
Website varchar(120)
);

ALTER TABLE Restaurant CHANGE Phone_Number Phone_Number CHAR(12);

-- Restaurant Insert Data --
INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain,
Capacity, Parking_Capacity, Website)
VALUES ("Fuckoffee", 5, "Atlanta, Georgia", "770-933-8393", "Coffee", "Barista", "Monday-Sunday", "7:00AM - 9:00PM", 
		"Low", "No", "No", "No", "No", "Yes", 20, 15, "https://www.Fuckofee.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain,
Capacity, Parking_Capacity, Website)
VALUES ("Baguetteaboutit", 5, "New York, New York", "676-833-8393", "Baguette", "Italian", "Monday-Sunday", "11:00AM - 10:00PM", 
		"High", "Yes", "No", "Yes", "Yes", "Yes", 20, 15, "https://www.Baguetteaboutit.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, 
Capacity, Parking_Capacity, Website)
VALUES ("The Great Impasta", 4, "Santa Barbara, California", "567-877-1273", "Pasta", "Italian", "Monday-Sunday", 
		"11:00AM - 9:00PM", "Medium", "Yes", "No", "Yes", "No", "Yes", 30, 20, "https://www.TheGreatImpasta.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, 
Capacity, Parking_Capacity, Website)
VALUES ("The Codfather", 4, "Seattle, Washington", "837-427-4277", "Cod", "Seafood", "Tuesday - Sunday", "11:00AM - 9:00PM", 
		"Medium", "Yes", "No", "No", "No", "No", 30, 20, "https://www.TheGreatImpasta.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, 
Capacity, Parking_Capacity, Website)
VALUES ("Burgatory", 4, "Lilburn, Georgia", "678-427-4486", "Burgers", "Restaurant", "Tuesday - Sunday", "9:00AM - 11:00PM", 
		"Low", "Yes", "No", "Yes", "No", "No", 24, 20, "https://www.Burgatory.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, 
Capacity, Parking_Capacity, Website)
VALUES ("Dairy Godmother", 5, "Atlanta, Georgia", "404-388-6157", "Cheesecake", "Pastries", "Monday - Friday", "8:00AM - 5:00PM", 
		"Medium", "Yes", "No", "No", "No", "No", 14, 8, "https://www.DairyGodmother.com");
        
INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, 
Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, 
Capacity, Parking_Capacity, Website)
VALUES ("Nacho Daddy", 4, "San Francisco, California", "415-304-6229", "Nachos", "Restaurant", "Monday - Friday", 
		"9:00AM - 9:00PM", "Low", "Yes", "No", "Yes", "No", "No", 32, 6, "https://www.NachoDaddyRestaurant.com");

UPDATE Restaurant
SET Specialty = "Nachos"
WHERE RestaurantName = "Nacho Daddy";


CREATE TABLE User(
	Username VARCHAR(15) PRIMARY KEY NOT NULL,
    Favorites VARCHAR (45),
    Credibility INT,
    Current_Location VARCHAR(45),
    Diet VARCHAR(45),
    Budget VARCHAR(45)
);

-- User Insert Data --
INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("jgrimaldo", "Burgers", 0, "Atlanta, Georgia", "None", "50.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("emartn", "Cod", 0, "San Francisco, California", "None", "70.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("Digiorno", "Baguette", 0, "New York, New York", "Vegan", "90.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("TomsNook", "Pasta", 0, "Santa Barbara, California", "None", "30.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("furryLover", "Coffee", 0, "Atlanta, Georgia", "Vegetarian", "20.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("pastelle", "Cheesecake", 0, "Atlanta, Georgia", "None", "40.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("Exodia", "Burgers", 0, "Lilburn, Georgia", "None", "35.00");


UPDATE User
SET Diet = "Vegetarian"
WHERE Username = 'furryLover';

CREATE TABLE Review(
	Review_Number INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Username VARCHAR(15),
    RestaurantName VARCHAR(30),
    RatingGiven INT,
    Review_Text VARCHAR(300),
    Date_Written VARCHAR(45),
    CONSTRAINT Review_User_FK FOREIGN KEY(Username)
		REFERENCES User(Username)
			ON UPDATE CASCADE,
	CONSTRAINT Review_Restaurant_FK FOREIGN KEY(RestaurantName)
		REFERENCES Restaurant(RestaurantName)
			ON UPDATE CASCADE
);

-- Review Insert Data --

# GOOD
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("jgrimaldo", "Burgatory", 5, "Burger very good! 10/10", "4/25/20");

# GOOD
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("emartn", "Nacho Daddy", 4, "I enjoyed the nachos, but the water was a little spicy.", "4/24/20");

# GOOD
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("Digiorno", "Baguetteaboutit", 5, "I, Digiorno, loved the food. It was a golden experience", "4/20/20");

# GOOD
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("TomsNook", "The Great Impasta", 5, "Yes yes, the food was amazing. Makes me want to invest in my own restaurant.
		Yes yes.", "4/23/20");

# GOOD
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("furryLover", "Fuckoffee", 4, "Nothing beats a good cup of joe at Fuckoffee", "4/21/20");

# good 
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("pastelle", "Dairy Godmother", 4, "I love eating the cake. ", "4/20/20");

 # SEE NOTES BELOW
INSERT INTO Review(Username, RestaurantName, RatingGiven, Review_Text, Date_Written)
VALUES("Exodia", "Burgatory", 5, "Burgers were fantastic. Love the cook on them.", "4/24/20");

# UPDATED LAST STATEMENT(007) TO MAKE SENSE WITH CURRENT LOCATION
# BOTH STATEMENTS BELOW ARE ME MAKING THOSE CHANGES BUT I ALSO UPDATED THEM IN THE STATEMENT ABOVE
# 


CREATE TABLE Amenities(
RestaurantName VARCHAR(50) PRIMARY KEY NOT NULL,
Kids_Area VARCHAR(3),
Free_WiFi VARCHAR(3),
Room_Reservation VARCHAR(3),
Drive_Thru VARCHAR(3),
Catering VARCHAR(3),
CONSTRAINT Amenities_Restaurant_FK FOREIGN KEY(RestaurantName)
	REFERENCES Restaurant(RestaurantName)
		ON UPDATE CASCADE
);

-- Amenities Insert Data --
INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('Baguetteaboutit', 'No', 'Yes', 'No', 'No', 'Yes');

INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('Burgatory', 'No', 'Yes', 'No', 'No', 'Yes');

INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('Dairy Godmother', 'No', 'Yes', 'No', 'No', 'Yes');

INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('Fuckoffee', 'No', 'Yes', 'No', 'No', 'No');

INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('Nacho Daddy', 'No', 'Yes', 'No', 'Yes', 'Yes');

INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('The Codfather', 'No', 'Yes', 'Yes', 'No', 'Yes');

INSERT INTO Amenities(RestaurantName, Kids_Area, Free_WiFi, Room_Reservation, Drive_Thru, Catering)
VALUES ('The Great Impasta', 'No', 'Yes', 'Yes', 'No', 'Yes');


CREATE TABLE Delivery_Service(
RestaurantName VARCHAR(50) PRIMARY KEY NOT NULL,
Fee DECIMAL(6, 2),
Available_Hours VARCHAR(45),
Delivery_Radius VARCHAR(45),
CONSTRAINT Delivery_Service_Restaurant_FK FOREIGN KEY(RestaurantName)
	REFERENCES Restaurant(RestaurantName)
		ON UPDATE CASCADE
);

-- Delivery_Service Insert Data --

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('Baguetteaboutit', null, null, null);

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('Burgatory', 10.50, null, '10 miles');

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('Dairy Godmother', null, null, null);

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('Fuckoffee', null, null, null);

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('Nacho Daddy', 10.00, '11:00AM - 10:00PM', '10 miles');

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('The Codfather', null, null, null);

INSERT INTO Delivery_Service(RestaurantName, Fee, Available_Hours, Delivery_Radius)
VALUES ('The Great Impasta', 12.00, '11:00AM - 9:00PM', '8 miles');

CREATE TABLE User_Restaurant(
	Username VARCHAR(15) NOT NULL,
    RestaurantName VARCHAR(50) NOT NULL,
	Favorite_Specialty_Link VARCHAR(3),
    Diet_Vegan_Option VARCHAR(3),
    Diet_Vegetarian_Option VARCHAR(3),
    CONSTRAINT User_Restaurant_User_FK FOREIGN KEY(Username)
		REFERENCES User(Username)
			ON UPDATE CASCADE,
     CONSTRAINT User_Restaurant_Restaurant_FK FOREIGN KEY(RestaurantName)
		REFERENCES Restaurant(RestaurantName)
			ON UPDATE CASCADE,     
	CONSTRAINT User_Restaurant_PK PRIMARY KEY(Username, RestaurantName)
);


# HAVE NOT RAN YET BECUASE OF THE "YES" VALUES
INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("Exodia", "Nacho Daddy", "No", "No", "No");

INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("pastelle", "Dairy Godmother", "Yes", "No", "No");

INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("furryLover", "Fuckoffee", "Yes", "No", "No");

INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("Tomsnook", "The Great Impasta", "Yes", "No", "No");

INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("Digiorno", "Baguetteaboutit", "Yes", "Yes", "No");

INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("emartn", "The Codfather", "Yes", "No", "No");

INSERT INTO User_Restaurant(Username, RestaurantName, Favorite_Specialty_Link, Diet_Vegan_Option, Diet_Vegetarian_Option) 
VALUES("jgrimaldo", "Burgatory", "Yes", "No", "No");

