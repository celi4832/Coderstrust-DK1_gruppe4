#Indicate that we'll use the database that we just created 
use CodersTrust;


# Inserts the data to the database Users
insert  into Users(UserID, FirstName, LastName, Passwords, Birthday, Nationality, Occupation, E_mail) #Here is values for each collum inserted in chronochical order
VALUES (0,'Aadi', 'Aaditya', '****', '1971-02-12', 'Bangladeshi', 'Student', 'Aaditya71@hotmail.com'), #values mean the int or varchar in each collum in the table.
(0, 'Yashodhara', 'Vebhot', '****', '1974-08-16', 'Bangladeshi', 'Unemployed', 'Vebhot74@gmail.com'),
(0, 'Momina', 'Achmed', '****', '1980-07-24', 'Indian', 'Freelancer', 'Achmed80@hotmail.com'),
(0, 'Nur', 'Rindu', '****', '1985-01-03', 'Malaysian', 'Student', 'Rindu85@msn.com'),
(0, 'Damba', 'Maseko', '****', '1989-01-31', 'Ugandan', 'Student', 'Maseko89@gmail.com'),
(0, 'Prisha', 'Ghaure', '****', '1992-04-10', 'Indian', 'Student', 'Ghaure92@yahoo.com'),
(0, 'Mamono', 'James', '****', '1995-09-28', 'Ugandan', 'Programmer', 'James95@hotmail.com'),
(0, 'Usman', 'Vairaj', '****', '1997-08-13', 'Bangladeshi', 'Unemployed', 'Vairaj97@gmail.com'),
(0, 'Annisa', 'Indah', '****', '1998-03-11', 'Indonesian', 'Photographer', 'Indah98@hotmail.com'),
(0, 'Jay', 'Raj', '****', '2000-11-02', 'Indian', 'Freelancer', 'raj00@gmail.com');



insert into Questions(QuestionNumber, Question, CategoryNumber, CategoryName)
values (0, 'Do you appreciate design in relation to products?', 1, 'Design'),
(0, 'Do you have a favourite artist when it comes to visual art?', 1, 'Design'),
(0, 'Do you enjoy making visual presentations for school or business?', 1, 'Design'),
(0, 'Have you tried editing video on your mobile device or PC?', 1, 'Design'),
(0, 'Do you like to take online intelligence tests?', 2, 'Development'),
(0, 'Do you find numbers and logic is preferred over philosophical questions?', 2, 'Development'),
(0, 'Are you interested in coding and learning to either understand or code yourself?', 2, 'Development'),
(0, 'Have you tried building a website with a CMS like wordpress or Wix?', 2, 'Development'),
(0, 'Are you very active on Social Media?', 3, 'Digital marketing'),
(0, 'Do you care about who likes and comments on your posts?', 3, 'Digital marketing'),
(0, 'Do you find that Social Media influences your buying decisions?', 3, 'Digital marketing'),
(0, 'Do you believe that Social Media is more effective than traditional marketing?', 3, 'Digital marketing');


insert into Area_of_interest(UserID, Category1, Category2, Category3, ShowsNo) #Here is the last table inserted with values. ShowNo mean that the UserID answered no to the question
Value (0, 2, 3, 4, 3),
(0, 1, 3, 1, 7),
(0, 3, 1, 2, 6),
(0, 2, 4, 1, 5),
(0, 0, 3, 0, 9),
(0, 2, 2, 2, 6),
(0, 1, 0, 3, 6),
(0, 3, 4, 2, 3),
(0, 0, 3, 4, 5),
(0, 4, 2, 0, 6);


SELECT 
    UserID,
    Category1 AS 'Graphical Design',
    Category2 AS 'Programming',
    Category3 AS 'Social Media',
    ShowsNo AS 'Answered No'
FROM
    Area_of_interest;
SELECT 
    UserID,
    ROUND(Category1 * 100.0 / 12, 1) AS 'Graphical Design',
    ROUND(Category2 * 100.0 / 12, 1) AS 'Programming',
    ROUND(Category3 * 100.0 / 12, 1) AS 'Social Media',
    ROUND(ShowsNo * 100.0 / 12, 1) AS 'Answered No'
FROM
    Area_of_interest;
#These steps will eventually show a table with the UserID and what percentece the user answered in each question category 
#The numbers will add up to a 100% and therefore can CodersTrust locate what course, the student is most likely interested in taking
#CodersTrust must use the first three Categories to locate the answers to their solution
