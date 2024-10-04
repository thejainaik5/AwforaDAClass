show databases;
show tables;
desc customers;
desc orders;
desc order_items;
desc books;

Use bookstore;

-- Creating Customers table

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10) 
	);

-- Creating Books Table


CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author VARCHAR(100),
    publisher VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT,
    price DECIMAL(10, 2)
);

-- Creating Orders Table

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Creating Order_items Table

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
  


-- Inserting Data into Customers Table

INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Daniel Brooks', 'Benjamin', 'fowlerkathryn@example.net', '2397 Cortez Crossing Suite 754
Torresstad, NC 97228', 'Ashleyside', 'Kentucky', '51277');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Jessica Jackson', 'Hernandez', 'davilathomas@example.com', 'USS Gray
FPO AP 01303', 'North Emily', 'Idaho', '06022');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Mark Phillips', 'Cruz', 'michaelhuff@example.com', '11481 Bates Mission Apt. 748
South Kyleton, GU 89077', 'Barnettbury', 'Illinois', '94784');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Kathy Jackson', 'Mcmahon', 'ldavis@example.com', 'Unit 3905 Box 7200
DPO AP 85889', 'Cherylbury', 'South Carolina', '94307');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Lydia Fernandez', 'Rhodes', 'briannaross@example.org', '774 Avery Circles
Yoderhaven, IN 69568', 'West Luis', 'Connecticut', '99648');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Shannon Roberts', 'Reed', 'gardnerdarrell@example.net', '52936 Kelsey River Suite 992
South Amanda, RI 59714', 'Davisburgh', 'Delaware', '81412');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Mrs. Nancy Jones', 'Smith', 'thomasjonathan@example.org', 'Unit 0554 Box 1075
DPO AA 55457', 'West Crystalville', 'Florida', '32941');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Fernando Michael', 'Espinoza', 'curtiscameron@example.net', '876 Cuevas Hill Suite 291
North Margaretville, RI 73624', 'Allisonbury', 'Minnesota', '09415');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Miguel Thompson', 'Bradley', 'kevin22@example.com', '568 Zimmerman Drives
Port Donaldland, ND 28872', 'Jasonhaven', 'Kansas', '38217');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Meredith Cook', 'Davis', 'morganjohnston@example.com', '9013 Randall Spur Suite 941
Rileyview, WI 63416', 'North Charles', 'Maryland', '29331');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Amy Miller', 'Hudson', 'brandon99@example.net', '5010 Jennifer Cape
South Paulmouth, IL 47896', 'Lindseyton', 'Vermont', '14444');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Crystal Wright', 'Williams', 'kmiller@example.com', '4601 Kerr Trace Apt. 231
Williamsfurt, WA 98451', 'Brianborough', 'Massachusetts', '30230');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Sean Miller', 'Gray', 'crawfordsarah@example.com', '9619 Vicki Corner Suite 330
Fernandeztown, MA 29967', 'Terrimouth', 'Illinois', '93455');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Kimberly Anderson', 'Jackson', 'angela66@example.org', 'USCGC Carpenter
FPO AA 09631', 'Port Robert', 'Idaho', '79464');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Brandy Dominguez', 'Palmer', 'aaron93@example.com', '50399 Guzman Village
Port Juanmouth, IN 95705', 'Yvetteville', 'Missouri', '90963');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Arthur Mullins', 'Price', 'dwilson@example.org', '5258 Thompson Lodge
East Patrickland, GA 87250', 'Tabithastad', 'Connecticut', '69084');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Renee Gilbert', 'Martinez', 'richard43@example.org', '022 Simon Fields Suite 020
North Shawn, UT 61104', 'Kimberlyburgh', 'New Mexico', '39753');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Patricia Lloyd', 'Mckay', 'angelica27@example.net', '53668 Amy Cliffs Suite 516
North Ashleybury, PA 06790', 'South Joseph', 'Alabama', '56654');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Nicole Strickland', 'Gray', 'athomas@example.org', '45711 Wood Ville
South Rhonda, MI 47202', 'Jasmineburgh', 'Nebraska', '40421');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Timothy Ward', 'Russell', 'vflores@example.org', '174 Wilkerson Rest
New Josephtown, PR 50758', 'Beasleychester', 'New Jersey', '90785');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Charles Smith', 'Koch', 'brianwalker@example.net', '61381 Larson Spring Apt. 583
Colinbury, MD 40782', 'Cruzside', 'Minnesota', '18636');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('David Nguyen', 'Howard', 'jacobsmegan@example.net', '9875 Joseph Pine Suite 038
Kevinberg, MD 21618', 'Brianfurt', 'Colorado', '13050');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Benjamin Olsen', 'Robertson', 'burnettelizabeth@example.net', '3734 Michael Isle
Edwardfurt, AR 82305', 'Kelseyville', 'Oregon', '87106');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Amanda Rodriguez', 'Shaffer', 'ashley28@example.net', '261 Sarah Springs
New Alison, PA 31666', 'Charleneberg', 'New York', '36179');
INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES ('Timothy Cooley', 'Williams', 'lcastillo@example.com', '1329 Kelly Curve Suite 730
Mariabury, NM 90035', 'Jenniferburgh', 'Hawaii', '07537');
INSERT INTO Customers (first_name, last_name, email, address, city, state) VALUES ('Timothy Cooley', 'Williams', 'lcastillo@example.com', '1329 Kelly Curve Suite 730
Mariabury, NM 90035', 'Jenniferburgh', 'Hawaii');
INSERT INTO Customers (first_name, last_name, email, address, city, zip) VALUES ('Timothy Cooley', 'Williams', 'lcastillo@example.com', '1329 Kelly Curve Suite 730
Mariabury, NM 90035', 'Jenniferburgh', '07537');


select * from Customers;

INSERT INTO Customers (first_name, last_name, email, address, city, state, zip) VALUES
('John', 'Doe', 'john.doe@example.com', '123 Main St', 'New York', 'NY', '10001'),
('Jane', 'Smith', 'jane.smith@example.com', '456 Oak St', 'Los Angeles', 'CA', '90001'),
('Michael', 'Brown', 'michael.brown@example.com', '789 Pine St', 'Chicago', 'IL', '60601'),
('Lisa', 'Taylor', 'lisa.taylor@example.com', '101 Maple St', 'Houston', 'TX', '77001'),
('David', 'Johnson', 'david.johnson@example.com', '202 Birch St', 'Phoenix', 'AZ', '85001'),
('Emily', 'Davis', 'emily.davis@example.com', '102 Cedar St', 'San Diego', 'CA', '92101'),
('Robert', 'Wilson', 'robert.wilson@example.com', '203 Elm St', 'Dallas', 'TX', '75201'),
('Mary', 'Clark', 'mary.clark@example.com', '104 Aspen St', 'Miami', 'FL', '33101'),
('James', 'Martinez', 'james.martinez@example.com', '205 Spruce St', 'Seattle', 'WA', '98101'),
('Patricia', 'Hernandez', 'patricia.hernandez@example.com', '306 Fir St', 'Boston', 'MA', '02101'),
('Christopher', 'Lopez', 'christopher.lopez@example.com', '407 Cherry St', 'Denver', 'CO', '80201'),
('Barbara', 'Gonzalez', 'barbara.gonzalez@example.com', '508 Walnut St', 'Atlanta', 'GA', '30301'),
('Joseph', 'Lee', 'joseph.lee@example.com', '609 Sycamore St', 'San Francisco', 'CA', '94101'),
('Sarah', 'Walker', 'sarah.walker@example.com', '710 Palm St', 'Austin', 'TX', '73301'),
('Daniel', 'Perez', 'daniel.perez@example.com', '811 Birchwood St', 'Detroit', 'MI', '48201'),
('Nancy', 'White', 'nancy.white@example.com', '912 Dogwood St', 'Philadelphia', 'PA', '19101'),
('Matthew', 'Young', 'matthew.young@example.com', '1013 Juniper St', 'Portland', 'OR', '97201'),
('Karen', 'King', 'karen.king@example.com', '1114 Alder St', 'Las Vegas', 'NV', '89101'),
('Joshua', 'Scott', 'joshua.scott@example.com', '1215 Beech St', 'Charlotte', 'NC', '28201'),
('Jessica', 'Garcia', 'jessica.garcia@example.com', '1316 Cypress St', 'San Antonio', 'TX', '78201'),
('Andrew', 'Rodriguez', 'andrew.rodriguez@example.com', '1417 Willow St', 'Orlando', 'FL', '32801'),
('Laura', 'Lewis', 'laura.lewis@example.com', '1518 Redwood St', 'Baltimore', 'MD', '21201'),
('Brian', 'Hall', 'brian.hall@example.com', '1619 Cedarwood St', 'Cleveland', 'OH', '44101'),
('Samantha', 'Allen', 'samantha.allen@example.com', '1720 Pinecone St', 'Sacramento', 'CA', '94201'),
('Eric', 'Young', 'eric.young@example.com', '1821 Redwood St', 'Nashville', 'TN', '37201'),
('Angela', 'Harris', 'angela.harris@example.com', '1922 Pinecrest St', 'Jacksonville', 'FL', '32201'),
('Steven', 'Wright', 'steven.wright@example.com', '2023 Sprucewood St', 'Indianapolis', 'IN', '46201'),
('Donna', 'Torres', 'donna.torres@example.com', '2124 Oakleaf St', 'Louisville', 'KY', '40201'),
('Anthony', 'Flores', 'anthony.flores@example.com', '2225 Mapleleaf St', 'Memphis', 'TN', '38101'),
('Sharon', 'Bennett', 'sharon.bennett@example.com', '2326 Applewood St', 'Oklahoma City', 'OK', '73101'),
('Thomas', 'Sanchez', 'thomas.sanchez@example.com', '2427 Elmwood St', 'Columbus', 'OH', '43201'),
('Michelle', 'Mitchell', 'michelle.mitchell@example.com', '2528 Redwood Dr', 'Milwaukee', 'WI', '53201'),
('Kevin', 'Campbell', 'kevin.campbell@example.com', '2629 Sycamore Dr', 'Las Vegas', 'NV', '89101'),
('Dorothy', 'Morgan', 'dorothy.morgan@example.com', '2730 Pine Hill Dr', 'Kansas City', 'MO', '64101'),
('Mark', 'Rivera', 'mark.rivera@example.com', '2831 Cedar Hill Dr', 'Fort Worth', 'TX', '76101'),
('Jennifer', 'Murphy', 'jennifer.murphy@example.com', '2932 Aspen Hill Dr', 'El Paso', 'TX', '79901'),
('Paul', 'Morris', 'paul.morris@example.com', '3033 Maple Ridge Dr', 'Fresno', 'CA', '93650'),
('Rebecca', 'Cook', 'rebecca.cook@example.com', '3134 Pine Ridge Dr', 'Tucson', 'AZ', '85701'),
('Edward', 'Bell', 'edward.bell@example.com', '3235 Oak Ridge Dr', 'Mesa', 'AZ', '85201'),
('Cynthia', 'Ward', 'cynthia.ward@example.com', '3336 Cedar Ridge Dr', 'Albuquerque', 'NM', '87101'),
('Charles', 'Baker', 'charles.baker@example.com', '3437 Spruce Ridge Dr', 'Long Beach', 'CA', '90801'),
('Ashley', 'Gomez', 'ashley.gomez@example.com', '3538 Maplewood Dr', 'Omaha', 'NE', '68101'),
('Jessica', 'Morgan', 'jessica.morgan@example.com', '3639 Cedarwood Dr', 'Colorado Springs', 'CO', '80901'),
('Henry', 'Rogers', 'henry.rogers@example.com', '3740 Pinecrest Dr', 'Raleigh', 'NC', '27601'),
('Karen', 'Nelson', 'karen.nelson@example.com', '3841 Redwood Dr', 'Miami', 'FL', '33101'),
('Richard', 'Griffin', 'richard.griffin@example.com', '3942 Sprucewood Dr', 'Oakland', 'CA', '94601'),
('Brenda', 'Cruz', 'brenda.cruz@example.com', '4043 Mapleleaf Dr', 'Minneapolis', 'MN', '55401'),
('George', 'Reyes', 'george.reyes@example.com', '4144 Oakleaf Dr', 'Tulsa', 'OK', '74101'),
('Susan', 'Sanders', 'susan.sanders@example.com', '4245 Pinecone Dr', 'New Orleans', 'LA', '70101');


Select * from Customers;


-- Inserting Data into Books table

INSERT INTO Books (title, author, publisher, genre, publication_year, price) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 'Fiction', 1925, 10.99),
('1984', 'George Orwell', 'Secker & Warburg', 'Dystopian', 1949, 8.99),
('To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 'Fiction', 1960, 7.99),
('Moby Dick', 'Herman Melville', 'Harper & Brothers', 'Adventure', 1851, 12.99),
('Pride and Prejudice', 'Jane Austen', 'T. Egerton', 'Romance', 1813, 9.99),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 'Fiction', 1951, 9.99),
('Brave New World', 'Aldous Huxley', 'Chatto & Windus', 'Dystopian', 1932, 11.50),
('The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', 'Fantasy', 1954, 15.99),
('Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Bloomsbury', 'Fantasy', 1997, 12.50),
('The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 'Fantasy', 1937, 10.50),
('War and Peace', 'Leo Tolstoy', 'The Russian Messenger', 'Historical', 1869, 14.99),
('Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', 'Philosophical', 1866, 13.99),
('The Odyssey', 'Homer', 'Various', 'Epic', -800, 10.99),
('The Iliad', 'Homer', 'Various', 'Epic', -760, 10.99),
('The Count of Monte Cristo', 'Alexandre Dumas', 'Penguin Classics', 'Adventure', 1844, 12.99),
('Ulysses', 'James Joyce', 'Sylvia Beach', 'Modernist', 1922, 11.99),
('Anna Karenina', 'Leo Tolstoy', 'The Russian Messenger', 'Romance', 1878, 13.99),
('Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', 'Adventure', 1605, 14.99),
('One Hundred Years of Solitude', 'Gabriel García Márquez', 'Harper & Row', 'Magical Realism', 1967, 12.99),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', 'Philosophical', 1880, 13.50),
('A Tale of Two Cities', 'Charles Dickens', 'Chapman & Hall', 'Historical', 1859, 9.99),
('Frankenstein', 'Mary Shelley', 'Lackington, Hughes, Harding, Mavor & Jones', 'Science Fiction', 1818, 7.99),
('Dracula', 'Bram Stoker', 'Archibald Constable and Company', 'Horror', 1897, 9.99),
('The Picture of Dorian Gray', 'Oscar Wilde', 'Lippincott\'s Monthly Magazine', 'Philosophical', 1890, 8.99),
('Jane Eyre', 'Charlotte Brontë', 'Smith, Elder & Co.', 'Romance', 1847, 9.50),
('The Grapes of Wrath', 'John Steinbeck', 'Viking Press', 'Historical', 1939, 10.99),
('Wuthering Heights', 'Emily Brontë', 'Thomas Cautley Newby', 'Gothic', 1847, 8.99),
('Fahrenheit 451', 'Ray Bradbury', 'Ballantine Books', 'Dystopian', 1953, 7.99),
('The Metamorphosis', 'Franz Kafka', 'Kurt Wolff', 'Philosophical', 1915, 6.99),
('The Stranger', 'Albert Camus', 'Gallimard', 'Philosophical', 1942, 7.99),
('Slaughterhouse-Five', 'Kurt Vonnegut', 'Delacorte Press', 'Science Fiction', 1969, 10.99),
('Heart of Darkness', 'Joseph Conrad', 'Blackwood\'s Magazine', 'Adventure', 1899, 8.50),
('Madame Bovary', 'Gustave Flaubert', 'Revue de Paris', 'Realism', 1856, 9.50),
('The Divine Comedy', 'Dante Alighieri', 'Various', 'Epic', 1320, 11.50),
('Lolita', 'Vladimir Nabokov', 'Olympia Press', 'Fiction', 1955, 9.99),
('Beloved', 'Toni Morrison', 'Alfred A. Knopf', 'Historical', 1987, 11.50),
('In Search of Lost Time', 'Marcel Proust', 'Grasset', 'Modernist', 1913, 15.99),
('The Sun Also Rises', 'Ernest Hemingway', 'Charles Scribner\'s Sons', 'Fiction', 1926, 8.99),
('Gulliver\'s Travels', 'Jonathan Swift', 'Benjamin Motte', 'Adventure', 1726, 7.99),
('The Sound and the Fury', 'William Faulkner', 'Jonathan Cape and Harrison Smith', 'Fiction', 1929, 10.99),
('Of Mice and Men', 'John Steinbeck', 'Covici Friede', 'Fiction', 1937, 7.50),
('The Old Man and the Sea', 'Ernest Hemingway', 'Charles Scribner\'s Sons', 'Fiction', 1952, 9.50),
('The Kite Runner', 'Khaled Hosseini', 'Riverhead Books', 'Historical', 2003, 12.99),
('The Road', 'Cormac McCarthy', 'Alfred A. Knopf', 'Post-Apocalyptic', 2006, 14.99),
('Catch-22', 'Joseph Heller', 'Simon & Schuster', 'Satire', 1961, 11.99),
('The Handmaid\'s Tale', 'Margaret Atwood', 'McClelland & Stewart', 'Dystopian', 1985, 12.99),
('The Shining', 'Stephen King', 'Doubleday', 'Horror', 1977, 11.99),
('The Alchemist', 'Paulo Coelho', 'HarperOne', 'Fiction', 1988, 10.50),
('The Little Prince', 'Antoine de Saint-Exupéry', 'Reynal & Hitchcock', 'Fable', 1943, 6.99);


Select * from Books;
Select * from Orders;


-- Inserting data into Orders Table

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2023-01-01', 25.99),
(2, '2023-01-02', 45.50),
(3, '2023-01-03', 15.75),
(4, '2023-01-04', 30.20),
(5, '2023-01-05', 55.99),
(6, '2023-01-06', 75.49),
(7, '2023-01-07', 18.99),
(8, '2023-01-08', 62.50),
(9, '2023-01-09', 40.25),
(10, '2023-01-10', 23.49),
(11, '2023-02-01', 39.75),
(12, '2023-02-02', 51.99),
(13, '2023-02-03', 28.49),
(14, '2023-02-04', 20.00),
(15, '2023-02-05', 66.75),
(16, '2023-02-06', 47.49),
(17, '2023-02-07', 35.20),
(18, '2023-02-08', 78.99),
(19, '2023-02-09', 30.00),
(20, '2023-02-10', 48.50),
(21, '2023-03-01', 23.99),
(22, '2023-03-02', 60.75),
(23, '2023-03-03', 39.20),
(24, '2023-03-04', 72.50),
(25, '2023-03-05', 25.99),
(26, '2023-03-06', 42.49),
(27, '2023-03-07', 29.99),
(28, '2023-03-08', 45.75),
(29, '2023-03-09', 53.50),
(30, '2023-03-10', 30.99),
(31, '2023-04-01', 57.49),
(32, '2023-04-02', 60.75),
(33, '2023-04-03', 38.50),
(34, '2023-04-04', 69.99),
(35, '2023-04-05', 25.99),
(36, '2023-04-06', 52.50),
(37, '2023-04-07', 48.75),
(38, '2023-04-08', 67.99),
(39, '2023-04-09', 40.49),
(40, '2023-04-10', 58.75),
(41, '2023-05-01', 23.75),
(42, '2023-05-02', 64.99),
(43, '2023-05-03', 39.50),
(44, '2023-05-04', 79.49),
(45, '2023-05-05', 45.25),
(46, '2023-05-06', 33.99),
(47, '2023-05-07', 55.50),
(48, '2023-05-08', 62.75),
(49, '2023-05-09', 49.99),
(50, '2023-05-10', 57.49);

Select * from Orders;


-- Inserting data into Order_Items

INSERT INTO Order_Items (order_id, book_id, quantity, unit_price) VALUES
(1, 3, 2, 7.99),
(2, 5, 1, 9.99),
(3, 2, 3, 8.99),
(4, 1, 1, 10.99),
(5, 7, 2, 11.50),
(6, 8, 1, 15.99),
(7, 10, 2, 10.50),
(8, 9, 3, 12.50),
(9, 6, 1, 9.99),
(10, 4, 1, 12.99),
(11, 12, 1, 13.99),
(12, 13, 2, 10.99),
(13, 11, 1, 14.99),
(14, 14, 3, 10.99),
(15, 15, 2, 12.99),
(16, 17, 1, 13.99),
(17, 16, 1, 11.99),
(18, 18, 2, 14.99),
(19, 20, 1, 8.99),
(20, 22, 1, 7.99),
(21, 25, 1, 9.50),
(22, 27, 2, 7.99),
(23, 29, 3, 11.99),
(24, 31, 2, 13.50),
(25, 32, 1, 15.99),
(26, 34, 2, 9.99),
(27, 35, 1, 12.50),
(28, 36, 2, 10.50),
(29, 37, 1, 8.99),
(30, 39, 3, 13.99),
(31, 40, 1, 14.50),
(32, 42, 2, 9.99),
(33, 43, 1, 12.99),
(34, 44, 3, 15.99),
(35, 45, 1, 7.50),
(36, 46, 1, 9.99),
(37, 47, 2, 13.99),
(38, 48, 1, 14.99),
(39, 49, 3, 9.50),
(40, 5, 1, 10.99),
(41, 1, 2, 10.50),
(42, 3, 1, 7.99),
(43, 5, 2, 9.99),
(44, 6, 3, 9.99),
(45, 8, 1, 12.50),
(46, 10, 2, 10.50),
(47, 12, 1, 13.99),
(48, 14, 2, 10.99),
(49, 15, 3, 12.99);

Select * from Order_Items;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Display all the data from the table

Select * from Customers;
-- Display first name data from the table
Select first_name from Customers;
-- Display unique first name from the table
Select DISTINCT first_name from Customers;

-- Display data where first name is JOHN
Select *  from Customers
	where first_name IN ("John","Jane");
    
Select * from Customers
		where customer_id > 20;
        
Select * from Orders
		where order_date = "2023-01-08";    


-- Display Unique emails of JOHN
Select DISTINCT email  from Customers
	where first_name = "John";
    
    
-- Sorting data and limiting output
    
Select * from Customers
order by first_name desc
limit 2;
    

-- Display data using AND(BOTH Conditions should be TRUE) in WHERE Condition

Select * from Customers
	where first_name = "John" and
	zip = "12345";

-- Display data using OR(Any one Conditions should be TRUE) in WHERE Condition

Select * from Customers
	where first_name = "John" or
	zip = "12345";

-- Exception(Leaving Out) of rows from the table
Select * from Customers
	where not first_name = "John";


-- Find Null Value rows
Select * from Customers
	where state is null;

-- Find not Null Value rows
Select * from Customers
	where state is not null;
    
    
-- Update values in the table

UPDATE Customers
SET first_name = 'Tonie'
WHERE customer_id=3;
    
-- Update values in multiple columns in the table

UPDATE Customers
SET first_name = 'Tonie',
	last_name = "Bhai"
WHERE customer_id=3;



Select * from Order_Items;


-- Deleting a row from a table

Delete from Order_Items
WHERE order_item_id=100;



Select * from customers;
Select * from orders;
Select * from order_items;
Select * from books;

-- Aggregate Functions without/WITH any conditions

select Min(total_amount) as Least_Priced_book 
from orders;





select Max(total_amount) as Max_Priced_book 
from orders;





select Sum(total_amount) as Sum_of_books 
from orders;





select Avg(total_amount) as Avg_Price_of_book 
from orders;





select Count(total_amount) as Total_no_of_Books 
from orders;







































































































