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

-- Restaurants Insert Data --
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
VALUES ("Nacho Daddy", 4, "San Francisco, California", "415-304-6229", "TexMex/Nachos", "Restaurant", "Monday - Friday", 
		"9:00AM - 9:00PM", "Low", "Yes", "No", "Yes", "No", "No", 32, 6, "https://www.NachoDaddyRestaurant.com");

UPDATE Restaurant
SET Website = "https://www.Fuckoffee.com"
WHERE RestaurantName = "Fuckoffee";


CREATE TABLE User(
	Username VARCHAR(15) PRIMARY KEY NOT NULL,
    Favorites VARCHAR (45),
    Credibility INT,
    Current_Location VARCHAR(45),
    Diet VARCHAR(45),
    Budget VARCHAR(45)
);

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("jgrimaldo", "Burgers", 0, "Atlanta, Georgia", "None", "50.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("emartn", "Cod", 0, "San Francisco, California", "None", "70.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("Digiorno", "Baguette", 0, "New York, New York", "Italian", "90.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("TomsNook", "Pasta", 0, "Santa Barbara, California", "Italian", "30.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("furryLover", "Coffee", 0, "Atlanta, Georgia", "none", "20.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("pastelle", "Cheesecake", 0, "Atlanta, Georgia", "none", "40.00");

INSERT INTO user(Username, Favorites, Credibility, Current_Location, Diet, Budget)
VALUES("Exodia", "Burgers", 0, "Lilburn, Georgia", "none", "35.00");