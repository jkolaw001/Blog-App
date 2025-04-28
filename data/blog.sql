-- TODO: Write an SQL statement to create the "post" table as
-- depicted in the included entity relationship diagram(ERD)
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    author VARCHAR(255),
    title VARCHAR(255),
    body text,
    posted_date date
);



-- TODO: Write an SQL statement to insert several sample blog
-- posts into the database.
INSERT INTO post (id, author, title, body, posted_date)
VALUES
    (1, 'John Doe', 'First Post', 'This is the body of the first post.', '2025-04-28'),
    (2, 'Jane Smith', 'Second Post', 'This is the body of the second post.', '2025-04-27'),
    (3, 'Alice Johnson', 'Third Post', 'This is the body of the third post.', '2025-04-26')
    (5, 'Emily White', 'Coding Journey', 'Sharing my coding experiences here.', '2025-04-24'),
    (6, 'Michael Black', 'Database Tips', 'Tips and tricks for managing databases effectively.', '2025-04-23'),
    (7, 'Sarah Green', 'Web Development', 'Web development trends in 2025.', '2025-04-22'),
    (8, 'Daniel Blue', 'Machine Learning', 'Basics of machine learning everyone should know.', '2025-04-21'),
    (9, 'Laura Red', 'Startup Life', 'Building a startup from scratch: lessons learned.', '2025-04-20'),
    (10, 'Peter Gray', 'Travel Diaries', 'My recent trip to Japan.', '2025-04-19'),
    (11, 'Chloe Silver', 'Healthy Living', 'How to maintain a healthy lifestyle with a busy schedule.', '2025-04-18'),
    (12, 'Liam Gold', 'Photography Tips', 'Beginner tips for better photography.', '2025-04-17'),
    (13, 'Sophia Violet', 'Music Production', 'How I produce music at home.', '2025-04-16'),
    (14, 'Noah Indigo', 'Investing Basics', 'Introduction to investing for beginners.', '2025-04-15'),
    (15, 'Olivia Teal', 'Mindfulness', 'The importance of mindfulness in everyday life.', '2025-04-14'),
    (16, 'William Amber', 'Fitness Goals', 'How I achieved my fitness goals.', '2025-04-13'),
    (17, 'Isabella Rose', 'Creative Writing', 'Tips for writing compelling stories.', '2025-04-12'),
    (18, 'James Ivory', 'Tech Reviews', 'Reviewing the latest smartphones in 2025.', '2025-04-11'),
    (19, 'Mia Coral', 'Sustainable Living', 'Ways to live more sustainably.', '2025-04-10'),
    (20, 'Benjamin Cyan', 'Home Improvement', 'DIY home improvement projects.', '2025-04-09');
