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

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, Capacity, Parking_Capacity, Website)
VALUES ("Fuckoffee", 5, "Atlanta, Georgia", "770-933-8393", "Coffee", "Barista", "Monday-Sunday", "7:00 am - 9:00 pm", "Low", "No", "No", "No", "No", "Yes", 20, 15, "https://FuckCofee.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, Capacity, Parking_Capacity, Website)
VALUES ("Baguetteaboutit", 5, "New York, New York", "676-833-8393", "Baguette", "Italian", "Monday-Sunday", "11:00 am - 10:00 pm", "High", "Yes", "No", "Yes", "Yes", "Yes", 20, 15, "https://Baguetteaboutit.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, Capacity, Parking_Capacity, Website)
VALUES ("The Great Impasta", 4, "Santa Barbara, California", "567-877-1273", "Pasta", "Italian", "Monday-Sunday", "11:00 am - 9:00 pm", "Medium", "Yes", "No", "Yes", "No", "Yes", 30, 20, "https://Impasta.com");

INSERT INTO Restaurant(RestaurantName, Avg_Rating, Location, Phone_Number, Specialty, Category, Days_Of_Operation, Hours_Of_Operation, Monetary_Tier, Vegetarian_Option, Self_Serve, Vegan_Option, Reservation_Required, Restaurant_Chain, Capacity, Parking_Capacity, Website)
VALUES ("The Codfather", 4, ", Seattle, Washington ", "837-427-4277", "Cod", "Seafood", "Tuesday - Sunday", "11:00 am - 9:00 pm", "Medium", "Yes", "No", "No", "No", "No", 30, 20, "https://Impasta.com");


