CREATE DATABASE Vacationtrip
CREATE TABLE Users (
  UserID INT PRIMARY KEY,
  Username VARCHAR(50) NOT NULL,
  Password VARCHAR(50) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  RegistrationDate DATE
);


CREATE TABLE Trips (
  TripID INT PRIMARY KEY,
  UserID INT foreign key references Users(UserID),
  Destination VARCHAR(100) NOT NULL,
  StartDate DATE,
  EndDate DATE,
  Budget DECIMAL(10, 2),
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


CREATE TABLE Activities (
  ActivityID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  ActivityName VARCHAR(100) NOT NULL,
  Description VARCHAR(255),
  Date DATE,
  Time TIME,
  Location VARCHAR(100),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);


CREATE TABLE Expenses (
  ExpenseID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  Category VARCHAR(50) NOT NULL,
  Amount DECIMAL(10, 2),
  Date DATE,
  Description VARCHAR(255),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);


CREATE TABLE Accommodations (
  AccommodationID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  Name VARCHAR(100) NOT NULL,
  Type VARCHAR(50),
  CheckInDate DATE,
  CheckOutDate DATE,
  Address VARCHAR(255),
  Phone VARCHAR(20),
  PricePerNight DECIMAL(10,2),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);


-- Insert sample values into the Users table
INSERT INTO Users (UserID, Username, Password, Email, FirstName, LastName, RegistrationDate)
VALUES
  (1, 'john_doe', 'password123', 'john.doe@example.com', 'John', 'Doe', '2023-01-01'),
  (2, 'jane_smith', 'abc123', 'jane.smith@example.com', 'Jane', 'Smith', '2023-02-15'),
  (3, 'michael_brown', 'pass456', 'michael.brown@example.com', 'Michael', 'Brown', '2023-03-10'),
  (4, 'mary_johnson', 'pass789', 'mary.johnson@example.com', 'Mary', 'Johnson', '2023-04-20'),
  (5, 'robert_smith', 'smithy123', 'robert.smith@example.com', 'Robert', 'Smith', '2023-05-01'),
  (6, 'jennifer_wilson', 'pass123', 'jennifer.wilson@example.com', 'Jennifer', 'Wilson', '2023-05-10'),
  (7, 'david_thompson', 'david456', 'david.thompson@example.com', 'David', 'Thompson', '2023-05-15'),
  (8, 'sarah_adams', 'sarahpass', 'sarah.adams@example.com', 'Sarah', 'Adams', '2023-06-10'),
  (9, 'ryan_wilson', 'ryan456', 'ryan.wilson@example.com', 'Ryan', 'Wilson', '2023-06-15'),
  (10, 'lisa_carter', 'lisapass', 'lisa.carter@example.com', 'Lisa', 'Carter', '2023-07-01'),
  (11, 'peter_davis', 'peter123', 'peter.davis@example.com', 'Peter', 'Davis', '2023-07-10'),
  (12, 'emily_martin', 'emilypass', 'emily.martin@example.com', 'Emily', 'Martin', '2023-08-01'),
  (13, 'jacob_jones', 'jacob456', 'jacob.jones@example.com', 'Jacob', 'Jones', '2023-08-10'),
  (14, 'olivia_thomas', 'oliviapass', 'olivia.thomas@example.com', 'Olivia', 'Thomas', '2023-09-01'),
  (15, 'william_clark', 'william123', 'william.clark@example.com', 'William', 'Clark', '2023-09-10'),
  (16, 'ava_hall', 'avapass', 'ava.hall@example.com', 'Ava', 'Hall', '2023-10-01'),
  (17, 'ethan_lewis', 'ethan456', 'ethan.lewis@example.com', 'Ethan', 'Lewis', '2023-10-10'),
  (18, 'alex_smith', 'alexpass', 'alex.smith@example.com', 'Alex', 'Smith', '2023-12-10'),
  (19, 'sophia_rodriguez', 'sophiapass', 'sophia.rodriguez@example.com', 'Sophia', 'Rodriguez', '2023-12-15'),
  (20, 'liam_walker', 'liampass', 'liam.walker@example.com', 'Liam', 'Walker', '2024-01-01'),
  (21, 'oliver_harris', 'oliverpass', 'oliver.harris@example.com', 'Oliver', 'Harris', '2024-01-10'),
  (22, 'ava_wright', 'avapass', 'ava.wright@example.com', 'Ava', 'Wright', '2024-02-01'),
  (23, 'noah_rodriguez', 'noahpass', 'noah.rodriguez@example.com', 'Noah', 'Rodriguez', '2024-02-10'),
  (24, 'isabella_clark', 'isabellapass', 'isabella.clark@example.com', 'Isabella', 'Clark', '2024-03-01'),
  (25, 'liam_thompson', 'liampass', 'liam.thompson@example.com', 'Liam', 'Thompson', '2024-03-10'),
  (26, 'sophia_lee', 'sophiapass', 'sophia.lee@example.com', 'Sophia', 'Lee', '2024-04-01'),
  (27, 'mason_hall', 'masonpass', 'mason.hall@example.com', 'Mason', 'Hall', '2024-04-10'),
  (28, 'mia_adams', 'miapass', 'mia.adams@example.com', 'Mia', 'Adams', '2024-05-01'),
  (29, 'jackson_martin', 'jacksonpass', 'jackson.martin@example.com', 'Jackson', 'Martin', '2024-05-10'),
  (30, 'amelia_davis', 'ameliapass', 'amelia.davis@example.com', 'Amelia', 'Davis', '2024-06-01'),
  (31, 'oliver_johnson', 'oliverpass', 'oliver.johnson@example.com', 'Oliver', 'Johnson', '2024-06-10'),
  (32, 'sophia_brown', 'sophiapass', 'sophia.brown@example.com', 'Sophia', 'Brown', '2024-07-01'),
  (33, 'aiden_wilson', 'aidenpass', 'aiden.wilson@example.com', 'Aiden', 'Wilson', '2024-07-10'),
  (34, 'charlotte_smith', 'charlottepass', 'charlotte.smith@example.com', 'Charlotte', 'Smith', '2024-08-01'),
  (35, 'elijah_jones', 'elijahpass', 'elijah.jones@example.com', 'Elijah', 'Jones', '2024-08-10'),
  (36, 'olivia_miller', 'oliviapass', 'olivia.miller@example.com', 'Olivia', 'Miller', '2024-09-01'),
  (37, 'benjamin_wilson', 'benjaminpass', 'benjamin.wilson@example.com', 'Benjamin', 'Wilson', '2024-09-10'),
  (38, 'emma_thompson', 'emmapass', 'emma.thompson@example.com', 'Emma', 'Thompson', '2024-10-01'),
  (39, 'noah_anderson', 'noahpass', 'noah.anderson@example.com', 'Noah', 'Anderson', '2024-10-10'),
  (40, 'mia_jackson', 'miapass', 'mia.jackson@example.com', 'Mia', 'Jackson', '2024-11-01'),
  (41, 'oliver_martin', 'oliverpass', 'oliver.martin@example.com', 'Oliver', 'Martin', '2024-11-10'),
  (42, 'ava_davis', 'avapass', 'ava.davis@example.com', 'Ava', 'Davis', '2024-12-01'),
  (43, 'liam_thomas', 'liampass', 'liam.thomas@example.com', 'Liam', 'Thomas', '2024-12-10'),
  (44, 'sophia_clark', 'sophiapass', 'sophia.clark@example.com', 'Sophia', 'Clark', '2025-01-01'),
  (45, 'jackson_jones', 'jacksonpass', 'jackson.jones@example.com', 'Jackson', 'Jones', '2025-01-10'),
  (46, 'olivia_hall', 'oliviapass', 'olivia.hall@example.com', 'Olivia', 'Hall', '2025-02-01'),
  (47, 'ethan_smith', 'ethanpass', 'ethan.smith@example.com', 'Ethan', 'Smith', '2025-02-10'),
  (48, 'sophia_wilson', 'sophiapass', 'sophia.wilson@example.com', 'Sophia', 'Wilson', '2025-02-15'),
  (49, 'william_taylor', 'williampass', 'william.taylor@example.com', 'William', 'Taylor', '2025-03-01'),
  (50, 'mia_miller', 'miapass', 'mia.miller@example.com', 'Mia', 'Miller', '2025-03-10');

-- Insert sample values into the Trips table
INSERT INTO Trips (TripID, UserID, Destination, StartDate, EndDate, Budget)
VALUES
  (1, 1, 'Paris', '2023-06-01', '2023-06-10', 2500.00),
  (2, 1, 'Rome', '2023-07-05', '2023-07-15', 3000.00),
  (3, 2, 'London', '2023-08-10', '2023-08-20', 3500.00),
  (4, 2, 'Tokyo', '2023-08-25', '2023-09-05', 5000.00),
  (5, 3, 'Barcelona', '2023-09-15', '2023-09-25', 4000.00),
  (6, 3, 'Amsterdam', '2023-10-01', '2023-10-10', 3000.00),
  (7, 4, 'Sydney', '2023-11-05', '2023-11-15', 4500.00),
  (8, 5, 'Tokyo', '2023-07-20', '2023-07-30', 4000.00),
  (9, 6, 'Barcelona', '2023-08-05', '2023-08-15', 3500.00),
  (10, 7, 'Dubai', '2023-09-10', '2023-09-20', 6000.00),
  (11, 8, 'New York', '2023-10-01', '2023-10-10', 5000.00),
  (12, 9, 'Bangkok', '2023-11-15', '2023-11-25', 4500.00),
  (13, 10, 'Paris', '2024-01-05', '2024-01-15', 4000.00),
  (14, 11, 'London', '2024-02-10', '2024-02-20', 4500.00),
  (15, 12, 'Rome', '2024-03-15', '2024-03-25', 3500.00),
  (16, 13, 'Sydney', '2024-04-20', '2024-04-30', 5000.00),
  (17, 14, 'Amsterdam', '2024-05-10', '2024-05-20', 4000.00),
  (18, 5, 'Barcelona', '2024-06-01', '2024-06-10', 3000.00),
  (19, 6, 'Tokyo', '2024-07-05', '2024-07-15', 3500.00),
  (20, 7, 'London', '2024-08-10', '2024-08-20', 4000.00),
  (21, 8, 'New York', '2024-09-25', '2024-10-05', 5000.00),
  (22, 9, 'Paris', '2024-10-15', '2024-10-25', 4500.00),
  (23, 10, 'Sydney', '2024-11-01', '2024-11-10', 4000.00),
  (24, 11, 'Amsterdam', '2025-01-05', '2025-01-15', 3500.00),
  (25, 12, 'Barcelona', '2025-02-10', '2025-02-20', 4000.00),
  (26, 13, 'Dubai', '2025-03-15', '2025-03-25', 4500.00),
  (27, 14, 'Rome', '2025-04-20', '2025-04-30', 5000.00),
  (28, 15, 'Tokyo', '2025-05-10', '2025-05-20', 4000.00),
  (29, 1, 'Paris', '2025-06-01', '2025-06-10', 3000.00),
  (30, 2, 'London', '2025-07-05', '2025-07-15', 3500.00),
  (31, 3, 'New York', '2025-08-10', '2025-08-20', 4000.00),
  (32, 4, 'Sydney', '2025-09-15', '2025-09-25', 4500.00),
  (33, 5, 'Barcelona', '2025-10-01', '2025-10-10', 5000.00),
  (34, 6, 'Amsterdam', '2025-11-05', '2025-11-15', 4000.00),
  (35, 7, 'Rome', '2026-01-20', '2026-01-30', 3500.00),
  (36, 8, 'Tokyo', '2026-03-01', '2026-03-10', 4000.00),
  (37, 9, 'London', '2026-04-10', '2026-04-20', 4500.00),
  (38, 10, 'Paris', '2026-05-15', '2026-05-25', 5000.00),
  (39, 11, 'Barcelona', '2026-06-01', '2026-06-10', 3500.00),
  (40, 12, 'Sydney', '2026-07-05', '2026-07-15', 4000.00);

  

-- Insert sample values into the Activities table
INSERT INTO Activities (ActivityID, TripID, ActivityName, Description, Date, Time, Location)
VALUES
  (1, 1, 'Eiffel Tower Visit', 'Explore the iconic Eiffel Tower', '2023-06-02', '09:00:00', 'Paris, France'),
  (2, 1, 'Louvre Museum Tour', 'Discover famous artworks at the Louvre Museum', '2023-06-03', '14:00:00', 'Paris, France'),
  (3, 2, 'Colosseum Tour', 'Visit the ancient Colosseum in Rome', '2023-07-06', '11:00:00', 'Rome, Italy'),
  (4, 3, 'Shibuya Crossing', 'Experience the famous Shibuya Crossing', '2023-08-26', '16:00:00', 'Tokyo, Japan'),
  (5, 3, 'Tsukiji Fish Market', 'Explore the bustling Tsukiji Fish Market', '2023-08-27', '09:30:00', 'Tokyo, Japan'),
  (6, 4, 'Anne Frank House', 'Visit the historic Anne Frank House', '2023-10-02', '11:00:00', 'Amsterdam, Netherlands'),
  (7, 4, 'Van Gogh Museum', 'Explore the famous Van Gogh Museum', '2023-10-03', '14:30:00', 'Amsterdam, Netherlands'),
  (8, 6, 'Shinjuku Gyoen National Garden', 'Visit the beautiful Shinjuku Gyoen National Garden', '2023-07-21', '10:00:00', 'Tokyo, Japan'),
  (9, 6, 'Tokyo DisneySea', 'Experience the magic of Tokyo DisneySea', '2023-07-22', '12:00:00', 'Tokyo, Japan'),
  (10, 7, 'Park Guell', 'Explore the artistic Park Guell in Barcelona', '2023-08-06', '14:00:00', 'Barcelona, Spain'),
  (11, 7, 'Sagrada Familia', 'Visit the iconic Sagrada Familia cathedral', '2023-08-07', '10:30:00', 'Barcelona, Spain'),
  (12, 8, 'Burj Khalifa', 'Take in the breathtaking views from the Burj Khalifa', '2023-09-11', '15:00:00', 'Dubai, United Arab Emirates'),
  (13, 8, 'Dubai Desert Safari', 'Enjoy an adventurous desert safari in Dubai', '2023-09-12', '16:00:00', 'Dubai, United Arab Emirates'),
  (14, 9, 'Times Square', 'Experience the vibrant atmosphere of Times Square', '2023-10-02', '19:00:00', 'New York, USA'),
  (15, 9, 'Statue of Liberty', 'Visit the iconic Statue of Liberty in New York', '2023-10-03', '11:00:00', 'New York, USA'),
  (16, 10, 'Grand Palace', 'Explore the magnificent Grand Palace in Bangkok', '2023-11-16', '13:00:00', 'Bangkok, Thailand'),
  (17, 10, 'Chatuchak Weekend Market', 'Shop for unique items at the bustling Chatuchak Weekend Market', '2023-11-17', '10:30:00', 'Bangkok, Thailand'),
  (18, 11, 'Park Guell', 'Explore the artistic Park Guell in Barcelona', '2026-06-02', '14:00:00', 'Barcelona, Spain'),
  (19, 11, 'Sagrada Familia', 'Visit the iconic Sagrada Familia cathedral', '2026-06-03', '10:30:00', 'Barcelona, Spain'),
  (20, 12, 'Burj Khalifa', 'Take in the breathtaking views from the Burj Khalifa', '2026-07-06', '15:00:00', 'Dubai, United Arab Emirates'),
  (21, 12, 'Dubai Desert Safari', 'Enjoy an adventurous desert safari in Dubai', '2026-07-07', '16:00:00', 'Dubai, United Arab Emirates'),
  (22, 13, 'Times Square', 'Experience the vibrant atmosphere of Times Square', '2026-08-11', '19:00:00', 'New York, USA'),
  (23, 13, 'Statue of Liberty', 'Visit the iconic Statue of Liberty in New York', '2026-08-12', '11:00:00', 'New York, USA'),
  (24, 14, 'Grand Palace', 'Explore the magnificent Grand Palace in Bangkok', '2026-09-16', '13:00:00', 'Bangkok, Thailand'),
  (25, 14, 'Chatuchak Weekend Market', 'Shop for unique items at the bustling Chatuchak Weekend Market', '2026-09-17', '10:30:00', 'Bangkok, Thailand'),
  (26, 15, 'Eiffel Tower Visit', 'Explore the iconic Eiffel Tower', '2026-10-05', '09:00:00', 'Paris, France'),
  (27, 15, 'Louvre Museum Tour', 'Discover famous artworks at the Louvre Museum', '2026-10-06', '14:00:00', 'Paris, France'),
  (28, 16, 'Colosseum Tour', 'Visit the ancient Colosseum in Rome', '2026-11-10', '11:00:00', 'Rome, Italy'),
  (29, 16, 'Shibuya Crossing', 'Experience the famous Shibuya Crossing', '2026-12-15', '16:00:00', 'Tokyo, Japan'),
  (30, 17, 'Tsukiji Fish Market', 'Explore the bustling Tsukiji Fish Market', '2027-01-10', '09:30:00', 'Tokyo, Japan'),
  (31, 17, 'Anne Frank House', 'Visit the historic Anne Frank House', '2027-02-15', '11:00:00', 'Amsterdam, Netherlands'),
  (32, 18, 'Van Gogh Museum', 'Explore the famous Van Gogh Museum', '2027-03-01', '14:30:00', 'Amsterdam, Netherlands'),
  (33, 18, 'Shinjuku Gyoen National Garden', 'Visit the beautiful Shinjuku Gyoen National Garden', '2027-04-05', '10:00:00', 'Tokyo, Japan'),
  (34, 19, 'Tokyo DisneySea', 'Experience the magic of Tokyo DisneySea', '2027-05-10', '12:00:00', 'Tokyo, Japan'),
  (35, 19, 'Shibuya Crossing', 'Experience the famous Shibuya Crossing', '2027-05-11', '16:00:00', 'Tokyo, Japan'),
  (36, 20, 'Tsukiji Fish Market', 'Explore the bustling Tsukiji Fish Market', '2027-06-15', '09:30:00', 'Tokyo, Japan'),
  (37, 20, 'Anne Frank House', 'Visit the historic Anne Frank House', '2027-07-20', '11:00:00', 'Amsterdam, Netherlands'),
  (38, 21, 'Van Gogh Museum', 'Explore the famous Van Gogh Museum', '2027-08-25', '14:30:00', 'Amsterdam, Netherlands'),
  (39, 21, 'Shinjuku Gyoen National Garden', 'Visit the beautiful Shinjuku Gyoen National Garden', '2027-09-01', '10:00:00', 'Tokyo, Japan'),
  (40, 22, 'Tokyo DisneySea', 'Experience the magic of Tokyo DisneySea', '2027-10-05', '12:00:00', 'Tokyo, Japan'),
  (41, 23, 'Great Wall of China', 'Visit the majestic Great Wall of China', '2028-06-02', '10:00:00', 'Beijing, China'),
  (42, 23, 'Forbidden City', 'Explore the ancient Forbidden City in Beijing', '2028-06-03', '14:00:00', 'Beijing, China'),
  (43, 24, 'Sydney Opera House', 'Enjoy a performance at the iconic Sydney Opera House', '2028-07-06', '18:00:00', 'Sydney, Australia'),
  (44, 24, 'Bondi Beach', 'Relax and soak up the sun at Bondi Beach', '2028-07-07', '12:00:00', 'Sydney, Australia'),
  (45, 25, 'Machu Picchu', 'Discover the ancient ruins of Machu Picchu', '2028-08-11', '09:00:00', 'Cusco, Peru'),
  (46, 25, 'Sacred Valley Tour', 'Explore the stunning landscapes of the Sacred Valley', '2028-08-12', '10:30:00', 'Cusco, Peru'),
  (47, 26, 'Pyramids of Giza', 'Marvel at the historic Pyramids of Giza', '2028-09-16', '11:00:00', 'Cairo, Egypt'),
  (48, 26, 'Egyptian Museum', 'Discover ancient artifacts at the Egyptian Museum', '2028-09-17', '14:30:00', 'Cairo, Egypt'),
  (49, 27, 'Christ the Redeemer', 'Admire the iconic Christ the Redeemer statue', '2028-10-05', '10:00:00', 'Rio de Janeiro, Brazil'),
  (50, 27, 'Sugarloaf Mountain', 'Enjoy panoramic views from Sugarloaf Mountain', '2028-10-06', '12:00:00', 'Rio de Janeiro, Brazil'),
  (51, 28, 'Taj Mahal', 'Marvel at the magnificent Taj Mahal', '2029-06-02', '09:00:00', 'Agra, India'),
  (52, 28, 'Jaipur City Palace', 'Explore the grandeur of Jaipur City Palace', '2029-06-03', '14:00:00', 'Jaipur, India'),
  (53, 29, 'Machu Picchu', 'Discover the ancient ruins of Machu Picchu', '2029-07-06', '11:00:00', 'Cusco, Peru'),
  (54, 29, 'Rainbow Mountain', 'Hike to the colorful Rainbow Mountain', '2029-07-07', '09:30:00', 'Cusco, Peru'),
  (55, 30, 'Santorini Sunset Cruise', 'Enjoy a breathtaking sunset cruise in Santorini', '2029-08-11', '18:00:00', 'Santorini, Greece'),
  (56, 30, 'Acropolis of Athens', 'Explore the historic Acropolis of Athens', '2029-08-12', '10:30:00', 'Athens, Greece'),
  (57, 31, 'Petra', 'Discover the ancient city of Petra', '2029-09-16', '11:00:00', 'Petra, Jordan'),
  (58, 31, 'Wadi Rum Desert Safari', 'Experience the beauty of Wadi Rum Desert', '2029-09-17', '14:30:00', 'Wadi Rum, Jordan'),
  (59, 32, 'Golden Gate Bridge', 'Take a walk across the iconic Golden Gate Bridge', '2029-10-05', '10:00:00', 'San Francisco, USA'),
  (60, 32, 'Alcatraz Island', 'Explore the infamous Alcatraz Island', '2029-10-06', '12:00:00', 'San Francisco, USA'),
  (61, 33, 'Angkor Wat', 'Visit the majestic Angkor Wat temple complex', '2029-11-10', '09:00:00', 'Siem Reap, Cambodia'),
  (62, 33, 'Floating Village Tour', 'Experience the unique floating villages of Siem Reap', '2029-11-11', '10:30:00', 'Siem Reap, Cambodia'),
  (63, 34, 'Machu Picchu', 'Discover the ancient ruins of Machu Picchu', '2030-01-10', '11:00:00', 'Cusco, Peru'),
  (64, 34, 'Amazon Rainforest Expedition', 'Explore the biodiversity of the Amazon rainforest', '2030-01-11', '09:30:00', 'Amazon, Peru'),
  (65, 35, 'Sagrada Familia', 'Visit the iconic Sagrada Familia cathedral', '2030-02-15', '11:00:00', 'Barcelona, Spain'),
  (66, 35, 'Park Guell', 'Explore the artistic Park Guell in Barcelona', '2030-02-16', '14:30:00', 'Barcelona, Spain'),
  (67, 36, 'Pyramids of Giza', 'Marvel at the historic Pyramids of Giza', '2030-03-01', '11:00:00', 'Cairo, Egypt'),
  (68, 36, 'Karnak Temple', 'Discover the ancient Karnak Temple in Luxor', '2030-03-02', '14:30:00', 'Luxor, Egypt'),
  (69, 37, 'Tokyo Disneyland', 'Experience the magic of Tokyo Disneyland', '2030-04-05', '10:00:00', 'Tokyo, Japan'),
  (70, 37, 'Meiji Shrine', 'Visit the tranquil Meiji Shrine in Tokyo', '2030-04-06', '12:00:00', 'Tokyo, Japan'),
  (71, 37, 'Shibuya Crossing', 'Experience the famous Shibuya Crossing', '2030-04-05', '16:00:00', 'Tokyo, Japan'),
  (72, 38, 'Tsukiji Fish Market', 'Explore the bustling Tsukiji Fish Market', '2030-05-10', '09:30:00', 'Tokyo, Japan'),
  (73, 38, 'Anne Frank House', 'Visit the historic Anne Frank House', '2030-06-15', '11:00:00', 'Amsterdam, Netherlands'),
  (74, 39, 'Van Gogh Museum', 'Explore the famous Van Gogh Museum', '2030-07-20', '14:30:00', 'Amsterdam, Netherlands'),
  (75, 39, 'Shinjuku Gyoen National Garden', 'Visit the beautiful Shinjuku Gyoen National Garden', '2030-08-25', '10:00:00', 'Tokyo, Japan'),
  (76, 40, 'Tokyo DisneySea', 'Experience the magic of Tokyo DisneySea', '2030-09-01', '12:00:00', 'Tokyo, Japan'),
  (77, 40, 'Shibuya Crossing', 'Experience the famous Shibuya Crossing', '2030-10-05', '16:00:00', 'Tokyo, Japan');
-- Insert sample values into the Expenses table
INSERT INTO Expenses (ExpenseID, TripID, Category, Amount, Date, Description)
VALUES
  (1, 1, 'Food', 100.00, '2023-06-02', 'Lunch at a local restaurant'),
  (2, 1, 'Transportation', 50.00, '2023-06-03', 'Metro tickets'),
  (3, 2, 'Sightseeing', 80.00, '2023-07-06', 'Tickets to the Colosseum'),
  (4, 3, 'Food', 120.00, '2023-08-26', 'Dinner at a sushi restaurant'),
  (5, 4, 'Transportation', 70.00, '2023-08-25', 'Train tickets to Tokyo'),
  (6, 5, 'Food', 150.00, '2023-11-06', 'Dinner at a local restaurant'),
  (7, 5, 'Transportation', 100.00, '2023-11-07', 'Bus tickets for city tour'),
  (8, 6, 'Food', 150.00, '2023-07-21', 'Lunch at a local restaurant'),
  (9, 6, 'Transportation', 50.00, '2023-07-22', 'Train tickets to Tokyo DisneySea'),
  (10, 7, 'Food', 120.00, '2023-08-06', 'Dinner at a tapas bar'),
  (11, 7, 'Sightseeing', 25.00, '2023-08-07', 'Entrance fee to Sagrada Familia'),
  (12, 8, 'Food', 200.00, '2023-09-11', 'Dinner at a fine dining restaurant in Burj Khalifa'),
  (13, 8, 'Adventure', 150.00, '2023-09-12', 'Desert safari tour'),
  (14, 9, 'Shopping', 100.00, '2023-10-02', 'Souvenirs from Times Square'),
  (15, 9, 'Sightseeing', 25.00, '2023-10-03', 'Ferry ticket to Statue of Liberty'),
  (16, 10, 'Sightseeing', 50.00, '2023-11-16', 'Entrance fee to Grand Palace'),
  (17, 10, 'Shopping', 80.00, '2023-11-17', 'Shopping at Chatuchak Weekend Market'),
  (18, 11, 'Food', 80.00, '2023-12-01', 'Dinner at a local restaurant'),
  (19, 11, 'Transportation', 30.00, '2023-12-02', 'Taxi fare'),
  (20, 12, 'Shopping', 150.00, '2023-12-15', 'Clothing shopping'),
  (21, 12, 'Food', 90.00, '2023-12-16', 'Brunch at a cafe'),
  (22, 13, 'Sightseeing', 40.00, '2024-01-10', 'Museum entrance fee'),
  (23, 13, 'Transportation', 20.00, '2024-01-11', 'Metro tickets'),
  (24, 14, 'Food', 120.00, '2024-02-05', 'Lunch at a seafood restaurant'),
  (25, 14, 'Adventure', 200.00, '2024-02-06', 'Parasailing activity'),
  (26, 15, 'Shopping', 80.00, '2024-03-20', 'Gift shopping'),
  (27, 15, 'Food', 110.00, '2024-03-21', 'Dinner at a steakhouse'),
  (28, 16, 'Sightseeing', 60.00, '2024-04-15', 'Guided city tour'),
  (29, 16, 'Transportation', 40.00, '2024-04-16', 'Bus tickets'),
  (30, 17, 'Food', 100.00, '2024-05-10', 'Dinner at a local restaurant'),
  (31, 17, 'Shopping', 50.00, '2024-05-11', 'Clothing shopping'),
  (32, 18, 'Food', 80.00, '2024-06-05', 'Lunch at a local restaurant'),
  (33, 18, 'Transportation', 30.00, '2024-06-06', 'Taxi fare'),
  (34, 19, 'Shopping', 150.00, '2024-07-15', 'Souvenirs shopping'),
  (35, 19, 'Food', 90.00, '2024-07-16', 'Dinner at a seafood restaurant'),
  (36, 20, 'Sightseeing', 40.00, '2024-08-10', 'Entrance fee to a museum'),
  (37, 20, 'Transportation', 20.00, '2024-08-11', 'Metro tickets'),
  (38, 21, 'Food', 120.00, '2024-09-05', 'Dinner at a fine dining restaurant'),
  (39, 21, 'Adventure', 200.00, '2024-09-06', 'Scuba diving experience'),
  (40, 22, 'Shopping', 80.00, '2024-10-20', 'Shopping at a local market'),
  (41, 22, 'Food', 110.00, '2024-10-21', 'Lunch at a traditional restaurant'),
  (42, 23, 'Sightseeing', 60.00, '2024-11-15', 'Guided city tour'),
  (43, 23, 'Transportation', 40.00, '2024-11-16', 'Bus tickets'),
  (44, 24, 'Food', 100.00, '2024-12-10', 'Dinner at a local restaurant'),
  (45, 24, 'Shopping', 50.00, '2024-12-11', 'Gift shopping'),
  (46, 25, 'Food', 80.00, '2025-01-05', 'Brunch at a trendy cafe'),
  (47, 25, 'Transportation', 30.00, '2025-01-06', 'Taxi fare'),
  (48, 26, 'Shopping', 150.00, '2025-02-15', 'Clothing shopping'),
  (49, 26, 'Food', 90.00, '2025-02-16', 'Dinner at a local restaurant'),
  (50, 27, 'Sightseeing', 40.00, '2025-03-10', 'Museum entrance fee'),
  (51, 27, 'Transportation', 20.00, '2025-03-11', 'Metro tickets'),
  (52, 28, 'Food', 120.00, '2025-04-05', 'Lunch at a local restaurant'),
  (53, 28, 'Adventure', 80.00, '2025-04-06', 'Zip-lining experience'),
  (54, 29, 'Shopping', 150.00, '2025-05-15', 'Souvenirs shopping'),
  (55, 29, 'Food', 90.00, '2025-05-16', 'Dinner at a seafood restaurant'),
  (56, 30, 'Sightseeing', 40.00, '2025-06-10', 'Entrance fee to a museum'),
  (57, 30, 'Transportation', 20.00, '2025-06-11', 'Metro tickets'),
  (58, 31, 'Food', 120.00, '2025-07-05', 'Dinner at a fine dining restaurant'),
  (59, 31, 'Adventure', 200.00, '2025-07-06', 'Scuba diving experience'),
  (60, 32, 'Shopping', 80.00, '2025-08-20', 'Shopping at a local market'),
  (61, 32, 'Food', 110.00, '2025-08-21', 'Lunch at a traditional restaurant'),
  (62, 33, 'Sightseeing', 60.00, '2025-09-15', 'Guided city tour'),
  (63, 33, 'Transportation', 40.00, '2025-09-16', 'Bus tickets'),
  (64, 34, 'Food', 100.00, '2025-10-10', 'Dinner at a local restaurant'),
  (65, 34, 'Shopping', 50.00, '2025-10-11', 'Gift shopping'),
  (66, 35, 'Food', 80.00, '2025-11-05', 'Brunch at a trendy cafe'),
  (67, 35, 'Transportation', 30.00, '2025-11-06', 'Taxi fare'),
  (68, 36, 'Shopping', 150.00, '2025-12-15', 'Clothing shopping'),
  (69, 36, 'Food', 90.00, '2025-12-16', 'Dinner at a local restaurant'),
  (70, 37, 'Sightseeing', 40.00, '2026-01-10', 'Museum entrance fee'),
  (71, 37, 'Transportation', 25.00, '2026-01-11', 'Bus tickets'),
  (72, 38, 'Food', 80.00, '2026-02-05', 'Lunch at a local restaurant'),
  (73, 38, 'Adventure', 150.00, '2026-02-06', 'Hiking tour'),
  (74, 39, 'Shopping', 120.00, '2026-03-15', 'Souvenirs shopping'),
  (75, 39, 'Food', 90.00, '2026-03-16', 'Dinner at a steakhouse'),
  (76, 40, 'Sightseeing', 30.00, '2026-04-10', 'Guided walking tour'),
  (77, 40, 'Transportation', 20.00, '2026-04-11', 'Metro tickets');

-- Insert sample values into the Accommodations table
INSERT INTO Accommodations (AccommodationID, TripID, Name, Type, CheckInDate, CheckOutDate, Address, Phone)
VALUES
  (1, 1, 'Hotel ABC', 'Hotel', '2023-06-01', '2023-06-10', '123 Main St, Paris', '+1234567890'),
  (2, 2, 'Resort XYZ', 'Resort', '2023-07-05', '2023-07-15', '456 Broad St, Rome', '+0987654321'),
  (3, 2, 'Hostel123', 'Hostel', '2023-08-10', '2023-08-20', '789 Street Ave, London', '+9876543210'),
  (4, 3, 'Hotel XYZ', 'Hotel', '2023-08-25', '2023-09-05', '789 Main Blvd, Tokyo', '+2468135790'),
  (5, 3, 'Hotel ABC', 'Hotel', '2023-10-01', '2023-10-10', '456 Canal St, Amsterdam', '+1357924680'),
  (6, 4, 'Beach Resort', 'Resort', '2023-11-05', '2023-11-15', '789 Ocean Rd, Sydney', '+2468135790'),
  (7, 6, 'Hotel Sakura', 'Hotel', '2023-07-20', '2023-07-30', '123 Cherry Blossom St, Tokyo', '+1234567890'),
  (8, 6, 'Airbnb Apartment', 'Apartment', '2023-07-20', '2023-07-30', '456 Cosy Street, Tokyo', '+9876543210'),
  (9, 7, 'Beachfront Resort', 'Resort', '2023-08-05', '2023-08-15', '789 Ocean Ave, Barcelona', '+2468135790'),
  (10, 7, 'Hostel Central', 'Hostel', '2023-08-05', '2023-08-15', '321 City Center, Barcelona', '+1357924680'),
  (11, 8, 'Luxury Hotel Dubai', 'Hotel', '2023-09-10', '2023-09-20', '123 Luxury Rd, Dubai', '+2468135790'),
  (12, 8, 'Desert Camp', 'Camp', '2023-09-10', '2023-09-20', '456 Sand Dunes, Dubai', '+9876543210'),
  (13, 9, 'Times Square Hotel', 'Hotel', '2023-10-01', '2023-10-10', '789 Broadway Ave, New York', '+1357924680'),
  (14, 9, 'Apartment Central Park', 'Apartment', '2023-10-01', '2023-10-10', '321 Park Blvd, New York', '+2468135790'),
  (15, 10, 'Riverside Hotel', 'Hotel', '2023-11-15', '2023-11-25', '123 River Rd, Bangkok', '+9876543210'),
  (16, 10, 'Hostel Backpackers', 'Hostel', '2023-11-15', '2023-11-25', '456 Backpacker St, Bangkok', '+1357924680'),
  (17, 11, 'Mountain Lodge', 'Lodge', '2024-01-05', '2024-01-15', '789 Mountain View, Vancouver', '+2468135790'),
  (18, 11, 'Cabin Retreat', 'Cabin', '2024-01-05', '2024-01-15', '123 Forest Rd, Vancouver', '+9876543210'),
  (19, 12, 'Beachfront Resort', 'Resort', '2024-02-10', '2024-02-20', '456 Ocean Ave, Cancun', '+1357924680'),
  (20, 12, 'Hotel ABC', 'Hotel', '2024-02-10', '2024-02-20', '321 Main St, Cancun', '+2468135790'),
  (21, 13, 'Alpine Chalet', 'Chalet', '2024-03-15', '2024-03-25', '123 Mountain Rd, Zurich', '+9876543210'),
  (22, 13, 'City Center Hotel', 'Hotel', '2024-03-15', '2024-03-25', '456 City Ave, Zurich', '+1357924680'),
  (23, 14, 'Resort Paradise', 'Resort', '2024-04-05', '2024-04-15', '789 Palm Beach, Maldives', '+2468135790'),
  (24, 14, 'Beach Villa', 'Villa', '2024-04-05', '2024-04-15', '123 Seaside Rd, Maldives', '+9876543210'),
  (25, 15, 'Historic Hotel', 'Hotel', '2024-05-10', '2024-05-20', '456 Heritage St, Rome', '+1357924680'),
  (26, 15, 'Apartment Central', 'Apartment', '2024-05-10', '2024-05-20', '321 City Center, Rome', '+2468135790'),
  (27, 16, 'Beachfront Resort', 'Resort', '2024-06-15', '2024-06-25', '123 Ocean Blvd, Bali', '+9876543210'),
  (28, 16, 'Surfers Paradise Hostel', 'Hostel', '2024-06-15', '2024-06-25', '456 Surfer St, Bali', '+1357924680'),
  (29, 17, 'Mountain Cabin', 'Cabin', '2024-07-05', '2024-07-15', '789 Mountain Trail, Aspen', '+2468135790'),
  (30, 17, 'Ski Lodge', 'Lodge', '2024-07-05', '2024-07-15', '123 Ski Resort Rd, Aspen', '+9876543210'),
  (31, 18, 'Hotel Metropolitan', 'Hotel', '2024-08-10', '2024-08-20', '456 Central Ave, Tokyo', '+1357924680'),
  (32, 18, 'Traditional Ryokan', 'Ryokan', '2024-08-10', '2024-08-20', '321 Old Town, Tokyo', '+2468135790'),
  (33, 19, 'Beach Resort', 'Resort', '2024-09-05', '2024-09-15', '789 Sandy Beach, Maui', '+9876543210'),
  (34, 19, 'Oceanfront Villa', 'Villa', '2024-09-05', '2024-09-15', '123 Coastal Rd, Maui', '+1357924680'),
  (35, 20, 'City Center Hotel', 'Hotel', '2024-10-01', '2024-10-10', '456 Downtown Ave, Barcelona', '+2468135790'),
  (36, 20, 'Hostel Backpackers', 'Hostel', '2024-10-01', '2024-10-10', '321 Backpacker St, Barcelona', '+9876543210'),
  (37, 21, 'Luxury Resort', 'Resort', '2024-11-15', '2024-11-25', '789 Paradise Island, Maldives', '+1357924680'),
  (38, 21, 'Private Beach Villa', 'Villa', '2024-11-15', '2024-11-25', '123 Beachfront Rd, Maldives', '+2468135790'),
  (39, 22, 'Mountain Lodge', 'Lodge', '2025-01-05', '2025-01-15', '456 Mountain View, Banff', '+9876543210'),
  (40, 22, 'Cabin Retreat', 'Cabin', '2025-01-05', '2025-01-15', '321 Forest Rd, Banff', '+1357924680'),
  (41, 23, 'Beachfront Hotel', 'Hotel', '2025-02-10', '2025-02-20', '789 Ocean Blvd, Miami', '+2468135790'),
  (42, 23, 'Art Deco Apartment', 'Apartment', '2025-02-10', '2025-02-20', '123 Art District, Miami', '+9876543210'),
  (43, 24, 'Ski Resort', 'Resort', '2025-03-15', '2025-03-25', '456 Mountain Rd, Whistler', '+1357924680'),
  (44, 24, 'Chalet Getaway', 'Chalet', '2025-03-15', '2025-03-25', '321 Ski Village, Whistler', '+2468135790'),
  (45, 25, 'Historic Inn', 'Inn', '2025-04-05', '2025-04-15', '789 Main St, Edinburgh', '+9876543210'),
  (46, 25, 'Boutique Hotel', 'Hotel', '2025-04-05', '2025-04-15', '123 City Center, Edinburgh', '+1357924680'),
  (47, 26, 'Beachfront Resort', 'Resort', '2025-05-10', '2025-05-20', '456 Sandy Beach, Phuket', '+2468135790'),
  (48, 26, 'Seaview Villa', 'Villa', '2025-05-10', '2025-05-20', '321 Coastal Rd, Phuket', '+9876543210'),
  (49, 27, 'Mountain Retreat', 'Retreat', '2025-06-15', '2025-06-25', '789 Mountain Ave, Queenstown', '+1357924680'),
  (50, 27, 'Lakeside Cabin', 'Cabin', '2025-06-15', '2025-06-25', '123 Lake Rd, Queenstown', '+2468135790'),
  (51, 28, 'City Center Hotel', 'Hotel', '2025-07-05', '2025-07-15', '456 Downtown Blvd, Amsterdam', '+9876543210'),
  (52, 28, 'Canal House', 'House', '2025-07-05', '2025-07-15', '321 Canal St, Amsterdam', '+1357924680'),
  (53, 29, 'Beachfront Resort', 'Resort', '2025-08-10', '2025-08-20', '789 Sandy Beach, Cancun', '+2468135790'),
  (54, 29, 'Ocean View Villa', 'Villa', '2025-08-10', '2025-08-20', '123 Ocean Rd, Cancun', '+9876543210'),
  (55, 30, 'Mountain Lodge', 'Lodge', '2025-09-15', '2025-09-25', '456 Mountain View, Aspen', '+1357924680'),
  (56, 30, 'Ski Chalet', 'Chalet', '2025-09-15', '2025-09-25', '321 Ski Village, Aspen', '+2468135790'),
  (57, 31, 'Beach Resort', 'Resort', '2025-10-01', '2025-10-10', '789 Paradise Beach, Phuket', '+9876543210'),
  (58, 31, 'Private Pool Villa', 'Villa', '2025-10-01', '2025-10-10', '123 Seaside Rd, Phuket', '+1357924680'),
  (59, 32, 'City Center Hotel', 'Hotel', '2025-11-05', '2025-11-15', '456 Downtown Ave, Tokyo', '+2468135790'),
  (60, 32, 'Traditional Ryokan', 'Ryokan', '2025-11-05', '2025-11-15', '321 Ryokan St, Tokyo', '+9876543210'),
  (61, 33, 'Beachfront Hotel', 'Hotel', '2026-01-01', '2026-01-10', '789 Ocean Blvd, Honolulu', '+1357924680'),
  (62, 33, 'Luxury Resort', 'Resort', '2026-01-01', '2026-01-10', '123 Paradise Rd, Honolulu', '+2468135790'),
  (63, 34, 'Mountain Retreat', 'Retreat', '2026-02-10', '2026-02-20', '456 Mountain Ave, Whistler', '+9876543210'),
  (64, 34, 'Log Cabin', 'Cabin', '2026-02-10', '2026-02-20', '321 Forest Rd, Whistler', '+1357924680'),
  (65, 35, 'Historic Inn', 'Inn', '2026-03-15', '2026-03-25', '789 Main St, Rome', '+2468135790'),
  (66, 35, 'Modern Boutique Hotel', 'Hotel', '2026-03-15', '2026-03-25', '123 City Center, Rome', '+9876543210'),
  (67, 36, 'Beachfront Resort', 'Resort', '2026-04-05', '2026-04-15', '456 Sandy Beach, Bali', '+1357924680'),
  (68, 36, 'Private Villa', 'Villa', '2026-04-05', '2026-04-15', '321 Villa Rd, Bali', '+2468135790'),
  (69, 37, 'City View Hotel', 'Hotel', '2026-05-01', '2026-05-10', '789 Cityscape Blvd, Dubai', '+9876543210'),
  (70, 37, 'Desert Oasis Resort', 'Resort', '2026-05-01', '2026-05-10', '123 Desert Rd, Dubai', '+1357924680'),
  (71, 38, 'Lakefront Hotel', 'Hotel', '2026-06-15', '2026-06-25', '456 Lakeview Ave, Geneva', '+2468135790'),
  (72, 38, 'Mountain Chalet', 'Chalet', '2026-06-15', '2026-06-25', '321 Mountain Rd, Geneva', '+9876543210'),
  (73, 39, 'Beachfront Resort', 'Resort', '2026-07-10', '2026-07-20', '789 Sandy Beach, Maldives', '+2468135790'),
  (74, 39, 'Overwater Bungalow', 'Bungalow', '2026-07-10', '2026-07-20', '123 Ocean Rd, Maldives', '+9876543210'),
  (75, 40, 'Historic Castle', 'Castle', '2026-08-15', '2026-08-25', '456 Castle Hill, Edinburgh', '+1357924680'),
  (76, 40, 'Luxury Hotel', 'Hotel', '2026-08-15', '2026-08-25', '321 City Center, Edinburgh', '+2468135790');


	   select * from Users
	   select * from Trips 
	   select* from Activities
	   select * from Expenses
	  select * from Accommodations

CREATE TABLE TripReviews (
  ReviewID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  UserID INT foreign key references Users(UserID),
  Rating INT,
  ReviewText TEXT,
  FOREIGN KEY (TripID) REFERENCES Trips(TripID),
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE PackingLists (
  PackingListID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  Item VARCHAR(100) NOT NULL,
  Quantity INT,
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

CREATE TABLE TripPhotos (
  PhotoID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  PhotoPath VARCHAR(255) NOT NULL,
  Caption VARCHAR(255),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

CREATE TABLE Transportation (
  TransportationID INT PRIMARY KEY,
  TripID INT foreign key references Trips(TripID),
  Mode VARCHAR(50) NOT NULL,
  DepartureDate DATE,
  DepartureTime TIME,
  ArrivalDate DATE,
  ArrivalTime TIME,
  TicketPrice DECIMAL(10, 2),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO TripReviews (ReviewID, TripID, UserID, Rating, ReviewText)
VALUES (1, 1, 1, 4, 'The trip was amazing! The sights were breathtaking.'),
       (2, 2, 2, 3, 'The trip was good, but the accommodations could have been better.'),
	   (3, 3, 1, 5, 'Absolutely loved every moment of the trip! Highly recommended.'),
	   (4, 4, 3, 4, 'The trip exceeded my expectations. The food was delicious!'),
	   (5, 5, 2, 2, 'Unfortunately, the trip didn''t meet my expectations. Disappointed.'),
	   (6, 6, 1, 4, 'Had a great time exploring the city. Lots of interesting places to visit.'),
	   (7, 7, 3, 5, 'The trip was absolutely perfect! Can''t wait to go back again.'),
	   (8, 8, 2, 3, 'The trip was average. Nothing exceptional, but not terrible either.'),
	   (9, 9, 1, 5, 'This trip was a dream come true! Unforgettable experiences.'),
	   (10, 10, 3, 2, 'Unfortunately, the trip didn''t live up to the hype. Disappointing experience.'),
	   (11, 11, 1, 4, 'Had a wonderful time exploring New York. So much to see and do!'),
       (12, 12, 2, 3, 'The trip to Bangkok was enjoyable, but the weather was too hot.'),
       (13, 13, 3, 5, 'Paris never disappoints! The trip was magical from start to finish.'),
       (14, 14, 1, 4, 'London is a beautiful city with rich history. Highly recommended.'),
       (15, 15, 2, 2, 'The trip to Rome was marred by overcrowded tourist sites.'),
       (16, 16, 3, 4, 'Sydney has stunning beaches and friendly locals. A memorable trip.'),
       (17, 17, 1, 5, 'Amsterdam is a vibrant and picturesque city. Loved every moment.'),
       (18, 18, 2, 3, 'The trip to Barcelona was enjoyable, but the language barrier was a challenge.'),
       (19, 19, 3, 5, 'Dubai is a futuristic city with impressive architecture. A must-visit destination.'),
       (20, 20, 1, 2, 'The trip to Tokyo was disappointing. The city felt overwhelming and impersonal.');


INSERT INTO PackingLists (PackingListID, TripID, Item, Quantity)
VALUES (1, 1, 'Clothes', 10),
       (2, 2, 'Toiletries', 5),
	   (3, 3, 'Camera', 1),
	   (4, 4, 'Snacks', 20),
	   (5, 5, 'Raincoat', 2),
	   (6, 6, 'Hiking Shoes', 1),
	   (7, 7, 'Swimsuit', 2),
	   (8, 8, 'Books', 3),
	   (9, 9, 'Sunscreen', 1),
	   (10, 10, 'Phone Charger', 1),
	   (11, 11, 'Passport', 1),
       (12, 12, 'Medications', 1),
       (13, 13, 'Travel Adapter', 1),
       (14, 14, 'Swimsuit', 2),
       (15, 15, 'Comfortable Shoes', 2),
       (16, 16, 'Camera', 1),
       (17, 17, 'Snacks', 10),
       (18, 18, 'Raincoat', 1),
       (19, 19, 'Hiking Gear', 1),
       (20, 20, 'Travel Pillow', 1);



INSERT INTO TripPhotos (PhotoID, TripID, PhotoPath, Caption)
VALUES(1, 1, 'photos/trip1/photo1.jpg', 'Beautiful sunset'),
       (2, 1, 'photos/trip1/photo2.jpg', 'Group photo'),
	   (3, 2, 'photos/trip2/photo1.jpg', 'Amazing view from the mountaintop'),
	   (4, 2, 'photos/trip2/photo2.jpg', 'Adventurous hiking trail'),
	   (5, 3, 'photos/trip3/photo1.jpg', 'Exploring the city streets'),
	   (6, 3, 'photos/trip3/photo2.jpg', 'Delicious local cuisine'),
	   (7, 4, 'photos/trip4/photo1.jpg', 'Relaxing on the beach'),
	   (8, 4, 'photos/trip4/photo2.jpg', 'Water sports adventure'),
	   (9, 5, 'photos/trip5/photo1.jpg', 'Visiting historical landmarks'),
	   (10, 5, 'photos/trip5/photo2.jpg', 'Capturing memories with friends'), 
       (11, 6, 'photos/trip6/photo1.jpg', 'Breathtaking mountain view'),
       (12, 6, 'photos/trip6/photo2.jpg', 'Scenic hiking trail'),
       (13, 7, 'photos/trip7/photo1.jpg', 'Enjoying the crystal-clear water'),
       (14, 7, 'photos/trip7/photo2.jpg', 'Poolside relaxation'),
       (15, 8, 'photos/trip8/photo1.jpg', 'Reading by the beach'),
       (16, 8, 'photos/trip8/photo2.jpg', 'Mesmerizing sunset'),
       (17, 9, 'photos/trip9/photo1.jpg', 'Exploring ancient ruins'),
       (18, 9, 'photos/trip9/photo2.jpg', 'Stunning architectural details'),
       (19, 10, 'photos/trip10/photo1.jpg', 'City skyline at night'),
       (20, 10, 'photos/trip10/photo2.jpg', 'Street food adventure');
  
INSERT INTO Transportation (TransportationID, TripID, Mode, DepartureDate, DepartureTime, ArrivalDate, ArrivalTime, TicketPrice)
VALUES (1, 1, 'Flight', '2023-05-20', '09:00:00', '2023-05-20', '12:00:00', 150.00),
       (2, 1, 'Train', '2023-05-25', '14:30:00', '2023-05-25', '18:00:00', 50.00),
	   (3, 2, 'Bus', '2023-06-02', '08:00:00', '2023-06-02', '13:00:00', 30.00),
	   (4, 2, 'Flight', '2023-06-05', '12:00:00', '2023-06-05', '15:00:00', 200.00),
	   (5, 3, 'Car', '2023-06-12', '10:00:00', '2023-06-12', '18:00:00', 80.00),
	   (6, 3, 'Train', '2023-06-18', '15:30:00', '2023-06-18', '21:00:00', 60.00),
	   (7, 4, 'Flight', '2023-06-25', '11:00:00', '2023-06-25', '15:00:00', 180.00),
	   (8, 4, 'Bus', '2023-06-28', '09:30:00', '2023-06-28', '14:00:00', 35.00),
	   (9, 5, 'Train', '2023-07-05', '13:00:00', '2023-07-05', '19:30:00', 70.00),
	   (10, 5, 'Flight', '2023-07-10', '10:30:00', '2023-07-10', '13:30:00',220.00),
	   (11, 6, 'Flight', '2023-07-15', '09:00:00', '2023-07-15', '12:00:00', 180.00),
       (12, 6, 'Train', '2023-07-20', '14:30:00', '2023-07-20', '18:00:00', 50.00),
       (13, 7, 'Bus', '2023-07-25', '08:00:00', '2023-07-25', '13:00:00', 30.00),
       (14, 7, 'Flight', '2023-07-28', '12:00:00', '2023-07-28', '15:00:00', 200.00),
       (15, 8, 'Car', '2023-08-02', '10:00:00', '2023-08-02', '18:00:00', 80.00),
       (16, 8, 'Train', '2023-08-08', '15:30:00', '2023-08-08', '21:00:00', 60.00),
       (17, 9, 'Flight', '2023-08-15', '11:00:00', '2023-08-15', '15:00:00', 180.00),
       (18, 9, 'Bus', '2023-08-18', '09:30:00', '2023-08-18', '14:00:00', 35.00),
       (19, 10, 'Train', '2023-08-25', '13:00:00', '2023-08-25', '19:30:00', 70.00),
       (20, 10, 'Flight', '2023-08-30', '10:30:00', '2023-08-30', '13:30:00', 220.00);




select * from TripReviews

select * from PackingLists

select * from TripPhotos

select * from Transportation

CREATE TABLE Contacts (
  ContactID INT PRIMARY KEY,
  UserID INT,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100),
  Phone VARCHAR(20),
  Address VARCHAR(255),
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Messages (
  MessageID INT PRIMARY KEY,
  UserID INT,
  TripID INT,
  Content VARCHAR(255) NOT NULL,
  DateSent DATETIME,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);



INSERT INTO Contacts (ContactID, UserID, Name, Email, Phone, Address)
VALUES
  (1, 1, 'John Doe', 'john.doe@example.com', '+123456789', '123 Main St'),
  (2, 1, 'Jane Smith', 'jane.smith@example.com', '+987654321', '456 Elm St'),
  (3, 2, 'David Johnson', 'david.johnson@example.com', '+111222333', '789 Oak St'),
  (4, 2, 'Emily Davis', 'emily.davis@example.com', '+444555666', '321 Pine St'),
  (5, 3, 'Sarah Johnson', 'sarah.johnson@example.com', '+555555555', '987 Maple Ave'),
  (6, 4, 'Michael Brown', 'michael.brown@example.com', '+666666666', '654 Cherry St'),
  (7, 4, 'Jessica Wilson', 'jessica.wilson@example.com', '+777777777', '321 Oak St'),
  (8, 5, 'Andrew Miller', 'andrew.miller@example.com', '+888888888', '456 Pine St'),
  (9, 6, 'Olivia Davis', 'olivia.davis@example.com', '+999999999', '789 Elm St'),
  (10, 6, 'William Anderson', 'william.anderson@example.com', '+1010101010', '123 Cedar St'),
  (11, 7, 'Sophia Martinez', 'sophia.martinez@example.com', '+1111111111', '654 Oak St'),
  (12, 7, 'Ethan Thompson', 'ethan.thompson@example.com', '+1212121212', '321 Maple Ave'),
  (13, 8, 'Isabella Clark', 'isabella.clark@example.com', '+1313131313', '789 Pine St'),
  (14, 8, 'James Lewis', 'james.lewis@example.com', '+1414141414', '456 Elm St'),
  (15, 9, 'Ava Turner', 'ava.turner@example.com', '+1515151515', '123 Oak St'),
  (16, 9, 'Liam Walker', 'liam.walker@example.com', '+1616161616', '456 Pine St'),
  (17, 10, 'Mia Harris', 'mia.harris@example.com', '+1717171717', '789 Elm St'),
  (18, 10, 'Benjamin Allen', 'benjamin.allen@example.com', '+1818181818', '321 Maple Ave'),
  (19, 11, 'Charlotte Young', 'charlotte.young@example.com', '+1919191919', '654 Oak St'),
  (20, 11, 'Henry Turner', 'henry.turner@example.com', '+2020202020', '321 Cedar St');


INSERT INTO Messages(MessageID, UserID, TripID, Content, DateSent)
VALUES
  (1, 1, 1, 'Hey, are we still meeting tomorrow?', '2023-05-20 08:30:00'),
  (2, 2, 1, 'Yes, let''s meet at the cafe.', '2023-05-20 09:15:00'),
  (3, 1, 2, 'I found a great hiking trail for our trip!', '2023-05-21 14:00:00'),
  (4, 2, 2, 'That sounds awesome! Can''t wait to go.', '2023-05-21 15:30:00'),
  (5, 3, 3, 'Hey, what time should we meet?', '2023-05-22 10:30:00'),
  (6, 4, 3, 'Let''s meet at 2 PM.', '2023-05-22 11:45:00'),
  (7, 5, 4, 'Do you have any suggestions for dinner?', '2023-05-23 18:00:00'),
  (8, 6, 4, 'I heard there''s a great Italian restaurant nearby.', '2023-05-23 19:30:00'),
  (9, 7, 5, 'I just booked the tickets for our trip!', '2023-05-24 09:00:00'),
  (10, 8, 5, 'That''s great! Can''t wait to go.', '2023-05-24 10:30:00'),
  (11, 9, 6, 'Are you bringing your camera for the trip?', '2023-05-25 13:45:00'),
  (12, 10, 6, 'Yes, I''ll capture some amazing photos.', '2023-05-25 15:00:00'),
  (13, 11, 7, 'Let''s meet at the entrance of the museum.', '2023-05-26 11:00:00'),
  (14, 12, 7, 'Sure, see you there!', '2023-05-26 11:30:00'),
  (15, 13, 8, 'Have you packed everything for the trip?', '2023-05-27 16:30:00'),
  (16, 14, 8, 'I think I have everything I need.', '2023-05-27 17:15:00'),
  (17, 15, 9, 'What time is our flight tomorrow?', '2023-05-28 09:00:00'),
  (18, 1, 9, 'Our flight is at 11 AM.', '2023-05-28 09:45:00'),
  (19, 2, 10, 'Im excited for our trip! Are you ready?', '2023-05-29 14:30:00'),
  (20, 3, 10, 'Yes, I have been looking forward to it!', '2023-05-29 15:45:00');



  CREATE TABLE Sights (
  SightID INT PRIMARY KEY,
  Destination VARCHAR(100),
  SightName VARCHAR(100),
  Description TEXT,
  Location VARCHAR(100),
  OpeningHours VARCHAR(100),
  EntranceFee DECIMAL(10, 2)
);
INSERT INTO Sights (SightID, Destination, SightName, Description, Location, OpeningHours, EntranceFee)
VALUES
  (1, 'Paris', 'Eiffel Tower', 'Iconic iron lattice tower in Paris', 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France', '9:00 AM - 12:00 AM', 25.00),
  (2, 'Rome', 'Colosseum', 'Ancient amphitheater in Rome', 'Piazza del Colosseo, 00184 Rome, Italy', '8:30 AM - 6:15 PM', 16.00),
  (3, 'London', 'Big Ben', 'Famous clock tower in London', 'Westminster, London SW1A 0AA, United Kingdom', '9:00 AM - 5:30 PM', 0.00),
  (4, 'New York', 'Statue of Liberty', 'Iconic statue in New York Harbor', 'Liberty Island, New York, NY 10004, United States', '8:30 AM - 4:00 PM', 20.00),
  (5, 'Tokyo', 'Tokyo Tower', 'Communications and observation tower in Tokyo', '4 Chome-2-8 Shibakoen, Minato City, Tokyo 105-0011, Japan', '9:00 AM - 11:00 PM', 12.50),
  (6, 'Sydney', 'Sydney Opera House', 'Famous performing arts center in Sydney', 'Bennelong Point, Sydney NSW 2000, Australia', 'Varies by event', 30.00),
  (7, 'Cairo', 'Pyramids of Giza', 'Ancient pyramid complex in Giza', 'Al Haram, Giza Governorate, Egypt', '8:00 AM - 4:00 PM', 10.00),
  (8, 'Rio de Janeiro', 'Christ the Redeemer', 'Massive Art Deco statue in Rio de Janeiro', 'Parque Nacional da Tijuca, Rio de Janeiro - RJ, Brazil', '8:00 AM - 7:00 PM', 15.00),
  (9, 'Barcelona', 'Sagrada Familia', 'Architectural masterpiece in Barcelona', 'Carrer de Mallorca, 401, 08013 Barcelona, Spain', '9:00 AM - 6:00 PM', 20.50),
  (10, 'Amsterdam', 'Anne Frank House', 'Historical site and museum in Amsterdam', 'Prinsengracht 263-267, 1016 GV Amsterdam, Netherlands', '9:00 AM - 7:00 PM', 14.00),
  (11, 'Berlin', 'Brandenburg Gate', 'Iconic neoclassical monument in Berlin', 'Pariser Platz, 10117 Berlin, Germany', 'Open 24 hours', 0.00),
  (12, 'Machu Picchu', 'Machu Picchu', 'Incan citadel in the Andes mountains of Peru', 'Unnamed Road, Aguas Calientes, Peru', '6:00 AM - 5:00 PM', 30.00),
  (13, 'Istanbul', 'Hagia Sophia', 'Historical and architectural wonder in Istanbul', 'Sultan Ahmet Mahallesi, Ayasofya Meydanı, 34122 Fatih/İstanbul, Turkey', '9:00 AM - 7:00 PM', 12.00),
  (14, 'Cusco', 'Sacsayhuaman', 'Incan fortress near Cusco, Peru', 'Cusco 08002, Peru', '7:00 AM - 5:00 PM', 8.00),
  (15, 'Dubai', 'Burj Khalifa', 'Tallest structure and skyscraper in the world', '1 Sheikh Mohammed bin Rashid Blvd, Downtown Dubai, United Arab Emirates', '8:30 AM - 11:00 PM', 35.00);



CREATE TABLE Flights (
  FlightID INT PRIMARY KEY,
  TripID INT,
  Airline VARCHAR(100),
  FlightNumber VARCHAR(20),
  DepartureAirport VARCHAR(100),
  DepartureDate DATE,
  DepartureTime TIME,
  ArrivalAirport VARCHAR(100),
  ArrivalDate DATE,
  ArrivalTime TIME,
  TicketPrice DECIMAL(10, 2),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO Flights (FlightID, TripID, Airline, FlightNumber, DepartureAirport, DepartureDate, DepartureTime, ArrivalAirport, ArrivalDate, ArrivalTime, TicketPrice)
VALUES
  (1, 1, 'Delta Airlines', 'DL123', 'JFK', '2023-05-01', '08:00:00', 'LAX', '2023-05-01', '12:00:00', 350.00),
  (2, 1, 'American Airlines', 'AA456', 'LAX', '2023-05-05', '14:30:00', 'JFK', '2023-05-05', '22:00:00', 400.00),
  (3, 2, 'United Airlines', 'UA789', 'SFO', '2023-05-02', '10:15:00', 'ORD', '2023-05-02', '17:45:00', 300.00),
  (4, 2, 'Delta Airlines', 'DL234', 'ORD', '2023-05-06', '09:30:00', 'SFO', '2023-05-06', '12:00:00', 280.00),
  (5, 3, 'JetBlue Airways', 'B620', 'JFK', '2023-05-03', '11:45:00', 'MCO', '2023-05-03', '14:30:00', 200.00),
  (6, 3, 'Southwest Airlines', 'WN983', 'MCO', '2023-05-07', '16:00:00', 'JFK', '2023-05-07', '19:00:00', 180.00),
  (7, 4, 'American Airlines', 'AA345', 'LAX', '2023-05-04', '09:00:00', 'DFW', '2023-05-04', '12:30:00', 250.00),
  (8, 4, 'Delta Airlines', 'DL567', 'DFW', '2023-05-08', '14:15:00', 'LAX', '2023-05-08', '17:30:00', 300.00),
  (9, 5, 'United Airlines', 'UA678', 'SFO', '2023-05-01', '10:30:00', 'ORD', '2023-05-01', '17:00:00', 320.00),
  (10, 5, 'American Airlines', 'AA890', 'ORD', '2023-05-05', '12:45:00', 'SFO', '2023-05-05', '15:30:00', 340.00),
  (11, 6, 'JetBlue Airways', 'B345', 'JFK', '2023-05-02', '14:00:00', 'MCO', '2023-05-02', '17:00:00', 190.00),
  (12, 6, 'Southwest Airlines', 'WN678', 'MCO', '2023-05-06', '09:15:00', 'JFK', '2023-05-06', '12:00:00', 220.00),
  (13, 7, 'American Airlines', 'AA567', 'LAX', '2023-05-03', '12:30:00', 'DFW', '2023-05-03', '16:00:00', 280.00),
  (14, 7, 'Delta Airlines', 'DL890', 'DFW', '2023-05-07', '15:45:00', 'LAX', '2023-05-07', '18:00:00', 320.00),
  (15, 8, 'United Airlines', 'UA123', 'SFO', '2023-05-04', '10:00:00', 'ORD', '2023-05-04', '17:30:00', 360.00);


CREATE TABLE CarRentals (
  RentalID INT PRIMARY KEY,
  TripID INT,
  RentalCompany VARCHAR(100),
  CarType VARCHAR(100),
  PickupDate DATE,
  PickupTime TIME,
  ReturnDate DATE,
  ReturnTime TIME,
  RentalPrice DECIMAL(10, 2),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

-- Inserting values into CarRentals table
INSERT INTO CarRentals (RentalID, TripID, RentalCompany, CarType, PickupDate, PickupTime, ReturnDate, ReturnTime, RentalPrice)
VALUES (1, 1, 'ABC Car Rentals', 'Sedan', '2023-05-01', '09:00:00', '2023-05-05', '18:00:00', 250.00),
       (2, 1, 'XYZ Car Rentals', 'SUV', '2023-05-02', '10:30:00', '2023-05-06', '09:30:00', 320.50),
       (3, 2, 'DEF Car Rentals', 'Compact', '2023-05-10', '12:00:00', '2023-05-15', '11:00:00', 180.75),
       (4, 3, 'GHI Car Rentals', 'Convertible', '2023-06-03', '15:30:00', '2023-06-08', '14:30:00', 400.00),
       (5, 3, 'JKL Car Rentals', 'Luxury', '2023-06-04', '08:00:00', '2023-06-09', '19:00:00', 550.00),
       (6, 4, 'MNO Car Rentals', 'Sedan', '2023-07-12', '11:00:00', '2023-07-16', '10:00:00', 280.50),
       (7, 4, 'PQR Car Rentals', 'SUV', '2023-07-14', '14:30:00', '2023-07-18', '13:30:00', 340.75),
       (8, 5, 'STU Car Rentals', 'Convertible', '2023-08-05', '09:30:00', '2023-08-09', '08:30:00', 390.00),
       (9, 6, 'VWX Car Rentals', 'Luxury', '2023-09-08', '13:00:00', '2023-09-13', '12:00:00', 520.00),
       (10, 6, 'YZA Car Rentals', 'Compact', '2023-09-09', '10:00:00', '2023-09-14', '21:00:00', 200.50),
       (11, 7, 'BCD Car Rentals', 'Sedan', '2023-10-20', '16:30:00', '2023-10-24', '15:30:00', 310.75),
       (12, 7, 'EFG Car Rentals', 'SUV', '2023-10-22', '09:00:00', '2023-10-26', '08:00:00', 370.00),
       (13, 8, 'HIJ Car Rentals', 'Convertible', '2023-11-15', '12:30:00', '2023-11-20', '11:30:00', 420.50),
       (14, 9, 'KLM Car Rentals', 'Luxury', '2023-12-01', '15:00:00', '2023-12-06', '14:00:00', 580.00),
       (15, 9, 'NOP Car Rentals', 'Compact', '2023-12-02', '08:30:00', '2023-12-07', '19:30:00', 220.75);

CREATE TABLE Categories (
  CategoryID INT PRIMARY KEY,
  CategoryName VARCHAR(50) NOT NULL
);

-- Insert sample values into the Categories table
INSERT INTO Categories (CategoryID, CategoryName)
VALUES
  (1, 'Food'),
  (2, 'Transportation'),
  (3, 'Accommodation'),
  (4, 'Sightseeing'),
  (5, 'Shopping'),
  (6, 'Adventure'),
  (7,'Water rides'),
  (8,'metro journey'),
  (9,'visiting zoo'),
  (10,'visiting park');


CREATE TABLE Payments (
  PaymentID INT PRIMARY KEY,
  UserID INT foreign key references Users(UserID),
  ExpenseID INT foreign key references Expenses(ExpenseID),
  Amount DECIMAL(10,2),
  PaymentDate DATE,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (ExpenseID) REFERENCES Expenses(ExpenseID)
);

INSERT INTO Payments (PaymentID, UserID, ExpenseID, Amount, PaymentDate) VALUES
(1, 1, 1, 100.00, '2023-05-01'),
(2, 1, 2, 50.00, '2023-05-02'),
(3, 2, 3, 75.00, '2023-05-03'),
(4, 2, 4, 120.00, '2023-05-04'),
(5, 3, 5, 80.00, '2023-05-05'),
(6, 3, 6, 60.00, '2023-05-06'),
(7, 4, 7, 95.00, '2023-05-07'),
(8, 4, 8, 110.00, '2023-05-08'),
(9, 5, 9, 70.00, '2023-05-09'),
(10, 5, 10, 90.00, '2023-05-10'),
(11, 6, 11, 85.00, '2023-05-11'),
(12, 6, 12, 105.00, '2023-05-12'),
(13, 7, 13, 65.00, '2023-05-13'),
(14, 7, 14, 75.00, '2023-05-14'),
(15, 8, 15, 100.00, '2023-05-15'),
(16, 8, 16, 120.00, '2023-05-16'),
(17, 9, 17, 90.00, '2023-05-17');


CREATE TABLE Locations (
  LocationID INT PRIMARY KEY,
  LocationName VARCHAR(100),
  Latitude DECIMAL(9,6),
  Longitude DECIMAL(9,6)
);

INSERT INTO Locations (LocationID, LocationName, Latitude, Longitude)
VALUES
  (1, 'New York City', 40.7128, -74.0060),
  (2, 'London', 51.5074, -0.1278),
  (3, 'Paris', 48.8566, 2.3522),
  (4, 'Tokyo', 35.6895, 139.6917),
  (5, 'Sydney', -33.8688, 151.2093),
  (6, 'Dubai', 25.2048, 55.2708),
  (7, 'Rome', 41.9028, 12.4964),
  (8, 'Berlin', 52.5200, 13.4050),
  (9, 'Cairo', 30.0444, 31.2357),
  (10, 'Rio de Janeiro', -22.9068, -43.1729),
  (11, 'Moscow', 55.7558, 37.6176),
  (12, 'Toronto', 43.6532, -79.3832),
  (13, 'Mumbai', 19.0760, 72.8777),
  (14, 'Cape Town', -33.9249, 18.4241),
  (15, 'Bangkok', 13.7563, 100.5018),
  (16, 'Amsterdam', 52.3702, 4.8952),
  (17, 'Barcelona', 41.3851, 2.1734),
  (18, 'Hong Kong', 22.3193, 114.1694),
  (19, 'São Paulo', -23.5505, -46.6333),
  (20, 'Stockholm', 59.3293, 18.0686);


CREATE TABLE Notifications (
  NotificationID INT PRIMARY KEY,
  UserID INT foreign key references Users(UserID),
  Message VARCHAR(255),
  DateCreated DATETIME,
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Notifications (NotificationID, UserID, Message, DateCreated)
VALUES
  (1, 1, 'You have a new message.', '2023-05-17 10:30:00'),
  (2, 2, 'Reminder: Meeting at 2 PM.', '2023-05-17 12:15:00'),
  (3, 3, 'Payment received. Thank you!', '2023-05-17 14:45:00'),
  (4, 3, 'Your flight has been delayed.', '2023-05-18 08:00:00'),
  (5, 5, 'Package delivered to your address.', '2023-05-18 11:30:00'),
  (6, 6, 'New friend request received.', '2023-05-18 15:20:00'),
  (7, 7, 'You have a new notification.', '2023-05-18 17:45:00'),
  (8, 8, 'Reminder: Pay your bills.', '2023-05-19 09:10:00'),
  (9, 9, 'Event canceled. Check for updates.', '2023-05-19 14:30:00'),
  (10, 10, 'Your subscription expires soon.', '2023-05-19 18:00:00'),
  (11, 11, 'New job opportunity available.', '2023-05-20 11:45:00'),
  (12, 12, 'Important announcement: Please read.', '2023-05-20 14:15:00'),
  (13, 13, 'You have a new message.', '2023-05-20 17:30:00'),
  (14, 14, 'Reminder: Appointment tomorrow.', '2023-05-21 09:00:00'),
  (15, 15, 'Your request has been processed.', '2023-05-21 13:20:00');

CREATE TABLE Favorites (
  UserID INT,
  TripID INT,
  PRIMARY KEY (UserID, TripID),
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO Favorites (UserID, TripID) VALUES (1, 1);
INSERT INTO Favorites (UserID, TripID) VALUES (1, 2);
INSERT INTO Favorites (UserID, TripID) VALUES (2, 3);
INSERT INTO Favorites (UserID, TripID) VALUES (3, 1);
INSERT INTO Favorites (UserID, TripID) VALUES (3, 4);
INSERT INTO Favorites (UserID, TripID) VALUES (4, 2);
INSERT INTO Favorites (UserID, TripID) VALUES (4, 5);
INSERT INTO Favorites (UserID, TripID) VALUES (5, 6);
INSERT INTO Favorites (UserID, TripID) VALUES (5, 1);
INSERT INTO Favorites (UserID, TripID) VALUES (6, 3);
INSERT INTO Favorites (UserID, TripID) VALUES (7, 5);
INSERT INTO Favorites (UserID, TripID) VALUES (7, 6);
INSERT INTO Favorites (UserID, TripID) VALUES (8, 4);
INSERT INTO Favorites (UserID, TripID) VALUES (9, 2);
INSERT INTO Favorites (UserID, TripID) VALUES (10,3);
INSERT INTO Favorites (UserID, TripID) VALUES (11, 4);
INSERT INTO Favorites (UserID, TripID) VALUES (12, 1);
INSERT INTO Favorites (UserID, TripID) VALUES (13, 5);
INSERT INTO Favorites (UserID, TripID) VALUES (14, 3);
INSERT INTO Favorites (UserID, TripID) VALUES (15, 2);


CREATE TABLE Notes (
  NoteID INT PRIMARY KEY,
  TripID INT FOREIGN KEY REFERENCES Trips(TripID),
  UserID INT FOREIGN KEY REFERENCES Users(UserID),
  Title VARCHAR(100) NOT NULL,
  Content VARCHAR(255),
  Date DATE,
  FOREIGN KEY (TripID) REFERENCES Trips(TripID),
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Notes (NoteID, TripID, UserID, Title, Content, Date) VALUES
(1, 1, 1, 'First Note', 'This is the content of the first note.', '2023-01-01'),
(2, 1, 2, 'Second Note', 'This is the content of the second note.', '2023-01-02'),
(3, 2, 1, 'Third Note', 'This is the content of the third note.', '2023-01-03'),
(4, 3, 2, 'Fourth Note', 'This is the content of the fourth note.', '2023-01-04'),
(5, 2, 3, 'Fifth Note', 'This is the content of the fifth note.', '2023-01-05'),
(6, 3, 3, 'Sixth Note', 'This is the content of the sixth note.', '2023-01-06'),
(7, 1, 1, 'Seventh Note', 'This is the content of the seventh note.', '2023-01-07'),
(8, 2, 2, 'Eighth Note', 'This is the content of the eighth note.', '2023-01-08'),
(9, 3, 1, 'Ninth Note', 'This is the content of the ninth note.', '2023-01-09'),
(10, 1, 3, 'Tenth Note', 'This is the content of the tenth note.', '2023-01-10'),
(11, 2, 3, 'Eleventh Note', 'This is the content of the eleventh note.', '2023-01-11'),
(12, 3, 2, 'Twelfth Note', 'This is the content of the twelfth note.', '2023-01-12'),
(13, 1, 1, 'Thirteenth Note', 'This is the content of the thirteenth note.', '2023-01-13'),
(14, 2, 2, 'Fourteenth Note', 'This is the content of the fourteenth note.', '2023-01-14'),
(15, 3, 3, 'Fifteenth Note', 'This is the content of the fifteenth note.', '2023-01-15');


--Retrieve all users from the Users table
SELECT * FROM Users;
--Retrieve the trips for a specific user (e.g., UserID = 3)
SELECT * FROM Trips WHERE UserID = 3;
--Retrieve all activities for a specific trip (e.g., TripID = 2)
SELECT * FROM Activities WHERE TripID = 2;
--The contacts associated with the user whose UserID is 1 are
SELECT * FROM Contacts WHERE UserID = 1;
--The photos associated with the trip whose TripID is 1 are
SELECT * FROM TripPhotos WHERE TripID = 1;


--Calculate the total expenses for a specific trip (e.g., TripID = 3)
SELECT SUM(Amount) AS TotalExpenses FROM Expenses WHERE TripID = 3;
--Retrieve all trips along with the corresponding user information
SELECT Trips.TripID, Trips.Destination, Trips.StartDate, Trips.EndDate, Trips.Budget, Users.Username, Users.Email
FROM Trips
JOIN Users ON Trips.UserID = Users.UserID;

/* Retrieve the activities, expenses, and accommodations for a specific trip (e.g., TripID = 1):*/
SELECT A.ActivityName, E.Category, AC.Name
FROM Activities A
JOIN Expenses E ON A.TripID = E.TripID
JOIN Accommodations AC ON A.TripID = AC.TripID
WHERE A.TripID = 1;
--Retrieve all trips with their corresponding users
SELECT T.TripID, T.Destination, U.Username
FROM Trips T
JOIN Users U ON T.UserID = U.UserID;
--Retrieve the trips and their total expenses
SELECT T.TripID, T.Destination, SUM(E.Amount) AS TotalExpenses
FROM Trips T
JOIN Expenses E ON T.TripID = E.TripID
GROUP BY T.TripID, T.Destination;

--Count the number of users in the Users table
SELECT COUNT(*) AS UserCount FROM Users;
--Count the number of trips for each user
SELECT UserID, COUNT(*) AS TripCount FROM Trips GROUP BY UserID;
--Find the maximum budget among all trips
SELECT MAX(Budget) AS MaxBudget FROM Trips;
--Find the maximum expense amount for a specific trip
SELECT MAX(Amount) AS MaxExpenseAmount FROM Expenses WHERE TripID = 1;
--Count the number of activities for each trip
SELECT TripID, COUNT(*) AS ActivityCount FROM Activities GROUP BY TripID;
--Count the number of expenses for each category
SELECT Category, COUNT(*) AS ExpenseCount FROM Expenses GROUP BY Category;
--Find the maximum registration date among all users
SELECT MAX(RegistrationDate) AS MaxRegistrationDate FROM Users;
--Find the maximum check-in date among all accommodations
SELECT MAX(CheckInDate) AS MaxCheckInDate FROM Accommodations;

/*Find users who have more than 1 trips*/
SELECT UserID, COUNT(*) AS TripCount
FROM Trips
GROUP BY UserID
HAVING COUNT(*) > 1;

/*Find trips with more than 1 activities*/
SELECT TripID, COUNT(*) AS ActivityCount
FROM Activities
GROUP BY TripID
HAVING COUNT(*) > 1;
/*Find categories with more than 3 expenses*/
SELECT Category, COUNT(*) AS ExpenseCount
FROM Expenses
GROUP BY Category
HAVING COUNT(*) > 3;

/*Find users who registered before a specific date and have at least 2 trips*/
SELECT  COUNT(*) AS TripCount
FROM Trips
JOIN Users ON Trips.UserID = Users.UserID
WHERE Users.RegistrationDate < '2023-02-01'
HAVING COUNT(*) >= 2;
--The trips sorted by their start dates are returned in ascending order.
SELECT * FROM Trips ORDER BY StartDate;
--The activities associated with the trip whose TripID is 1 are returned, sorted by time in ascending order.
SELECT * FROM Activities WHERE TripID = 1 ORDER BY Time;
--The reviews for the trip whose TripID is 1 are returned, sorted by rating in descending order.
SELECT * FROM TripReviews WHERE TripID = 1 ORDER BY Rating DESC;
--The items in the packing list for the trip whose TripID is 1 are returned, sorted by quantity in ascending order.
SELECT * FROM PackingLists WHERE TripID = 1 ORDER BY Quantity ASC;
--The photos associated with the trip whose TripID is 1 are returned, sorted by caption in ascending order.
SELECT * FROM TripPhotos WHERE TripID = 1 ORDER BY Caption;
--The transportation details for the trip whose TripID is 1 are returned, sorted by departure date in ascending order.
SELECT * FROM Transportation WHERE TripID = 1 ORDER BY DepartureDate;
--The contacts for the user whose UserID is 1 are returned, sorted by name in ascending order.
SELECT * FROM Contacts WHERE UserID = 1 ORDER BY Name;
--The messages associated with the trip whose TripID is 1 are returned, sorted by the date sent in descending order.
SELECT * FROM Messages WHERE TripID = 1 ORDER BY DateSent DESC;
--The trips with start dates that are on or after the current date are returned.
SELECT * FROM Trips WHERE StartDate >= GETDATE();
--Retrieve all trip reviews with a rating higher than 4
SELECT * FROM TripReviews WHERE Rating > 4;
--Retrieve all trips that have a duration longer than 7 days
SELECT * FROM Trips WHERE DATEDIFF(DAY, StartDate, EndDate) > 7;
--Retrieve the total quantity of items packed for each trip
SELECT TripID, SUM(Quantity) AS TotalQuantity FROM PackingLists GROUP BY TripID;
--Retrieve the average rating for each trip
SELECT TripID, AVG(Rating) AS AverageRating FROM TripReviews GROUP BY TripID;
--Retrieve the trips sorted by the number of activities in descending order
SELECT t.TripID, COUNT(a.ActivityID) AS ActivityCount FROM Trips t LEFT JOIN Activities a ON t.TripID = a.TripID GROUP BY t.TripID ORDER BY ActivityCount DESC;
--Retrieve the users who have not submitted any trip reviews
SELECT u.UserID, u.FirstName FROM Users u LEFT JOIN TripReviews tr ON u.UserID = tr.UserID WHERE tr.UserID IS NULL;
--Retrieve the number of contacts for each user
SELECT UserID, COUNT(*) AS ContactCount FROM Contacts GROUP BY UserID;
--Retrieve all trips for users who have not submitted any trip reviews
SELECT * FROM Trips WHERE UserID IN (SELECT UserID FROM Users WHERE UserID NOT IN (SELECT DISTINCT UserID FROM TripReviews));
--Retrieve all activities for trips that have a duration longer than 7 days:
SELECT * FROM Activities WHERE TripID IN (SELECT TripID FROM Trips WHERE DATEDIFF(DAY, StartDate, EndDate) > 7);
--Retrieve all trips with the highest average rating
SELECT * FROM Trips WHERE TripID IN (SELECT TripID FROM TripReviews GROUP BY TripID HAVING AVG(Rating) = (SELECT MAX(AverageRating) FROM (SELECT TripID, AVG(Rating) AS AverageRating FROM TripReviews GROUP BY TripID) AS Subquery));
--Retrieve all users who have contacts with a specific user
SELECT * FROM Users WHERE UserID IN (SELECT DISTINCT UserID FROM Contacts WHERE ContactID= 1);
--Retrieve all users whose names start with the letter 'J'
SELECT * FROM Users WHERE  Username LIKE 'J%';
--Retrieve all trips where the destination starts with the letter 'A'
SELECT * FROM Trips WHERE Destination LIKE 'A%';
--Retrieve all activities that start with the letter 'B'
SELECT * FROM Activities WHERE ActivityName LIKE 'B%';
--Retrieve all contacts whose names start with the letter 'D'
SELECT * FROM Contacts WHERE Name LIKE 'D%';

--top 4 ratings in review
SELECT distinct Top 4 Rating
FROM TripReviews
ORDER BY Rating DESC
--updating the value of password whose userid is 2
update Users set password='jane36' where UserID=2
--using alter command
alter table Users add age int null
alter table Users drop column age
