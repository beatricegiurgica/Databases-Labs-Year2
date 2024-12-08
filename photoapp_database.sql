-- Drop table statements to avoid duplicate creation
drop table if exists follow cascade;
drop table if exists photoapp_likes cascade;
drop table if exists photoapp_photos cascade;
drop table if exists photoapp_users cascade;

-- Create photoapp_users table to store user information
create table photoapp_users(
	user_id text primary key,
	user_name text,
	created_at date	
);

-- Create the photoapp_photos table to store data related to the photos uploaded by users
create table photoapp_photos(
	photo_id text primary key,
	image_url text,
	user_id text,
	publication_date date,
	foreign key (user_id) references photoapp_users(user_id)
);

-- Create the photoapp_likes table to track user likes on photos
create table photoapp_likes(
	user_id text,
	photo_id text,
	like_date date,
	primary key (user_id, photo_id),
	foreign key (user_id) references photoapp_users(user_id),
	foreign key (photo_id) references photoapp_photos(photo_id)
);

--Inserting data into photoapp_users table
insert into photoapp_users(user_id, user_name, created_at) values
('F12345', 'john_smith', '2023-11-25'),
('F23456', 'jane_jones', '2023-03-15'),
('C12378', 'sam_wilson', '2023-11-05'),
('D14345', 'john_sailor', '2023-01-20'),
('F12675', 'john_brum', '2022-11-07'),
('C34098', 'chiara_celante', '2023-04-30'),
('D14872', 'matteo_brillante', '2022-12-25'),
('E26903', 'erick_mema', '2024-05-05'),
('E41637', 'jasmine.beauty', '2024-01-13'),
('C45672', 'helloworld_', '2023-01-26'),
('F56390', 'fashionismypassion', '2022-12-12'),
('F43758', 'adele123', '2024-03-01'),
('C72931', 'ilovecats', '2023-10-05'),
('E01937', 'riccardo_maluma', '2024-04-01'),
('D51829', 'luca_bieber', '2022-06-11'),
('F67890', 'alice_wonder', '2023-05-01'),      
('F54321', 'bob_the_builder', '2023-06-10'),   
('F98765', 'charlie_brown', '2024-03-15'),     
('F12346', 'daisy_duck', '2023-07-20'),      
('F11111', 'eloise_elegant', '2024-01-22'),    
('F22222', 'frank_furry', '2023-04-12'),       
('F33333', 'george_great', '2023-02-18'),      
('F44444', 'hannah_happy', '2024-02-14'),     
('F55555', 'ivy_icecream', '2023-11-09'),      
('F66666', 'jack_jumping', '2024-04-01');    


--Inserting data into photoapp_photos table
insert into photoapp_photos(photo_id, image_url, user_id, publication_date) values
('3','https://example.com/photo3.jpg', 'F12345', '2024-02-12'),
('4','https://example.com/photo4.jpg', 'F23456', '2023-10-20'),
('1','https://example.com/photo1.jpg', 'C12378', '2023-12-12'),
('6','https://example.com/photo6.jpg', 'D14345', '2024-01-01'),
('9','https://example.com/photo9.jpg', 'F12675', '2023-07-21'),
('2', 'https://example.com/photo2.jpg', 'C34098', '2023-09-23'),
('5', 'https://example.com/photo5.jpg', 'E26903', '2024-08-15'),
('7','https://example.com/photo2.jpg', 'C45672', '2023-07-10'),
('8', 'https://example.com/photo8.jpg', 'D14872', '2023-11-05'),
('10', 'https://example.com/photo10.jpg', 'E41637', '2024-05-10'),
('15', 'https://example.com/photo15.jpg', 'C72931', '2024-07-17'),
('18', 'https://example.com/photo18.jpg', 'F56390', '2023-01-17'),
('28', 'https://example.com/photo28.jpg', 'F43758', '2024-03-27'),
('19', 'https://example.com/photo19.jpg', 'D51829', '2023-06-22'),
('22', 'https://example.com/photo22.jpg', 'E01937', '2024-10-01'),
('11', 'https://example.com/photo11.jpg', 'F67890', '2024-06-01'),   
('12', 'https://example.com/photo12.jpg', 'F54321', '2023-12-05'),  
('13', 'https://example.com/photo13.jpg', 'F98765', '2024-01-11'), 
('14', 'https://example.com/photo14.jpg', 'F12346', '2024-02-28'),   
('35', 'https://example.com/photo35.jpg', 'F11111', '2023-05-22'),   
('16', 'https://example.com/photo16.jpg', 'F22222', '2023-03-15'),   
('17', 'https://example.com/photo17.jpg', 'F33333', '2023-06-06'),   
('38', 'https://example.com/photo38.jpg', 'F44444', '2024-05-05'),   
('39', NULL, 'F55555', '2024-07-07'),                                 
('20', 'https://example.com/photo20.jpg', 'C45672', '2023-10-20');

--Inserting data into photoapp_likes table
insert into photoapp_likes(user_id, photo_id, like_date) values
('F12345', '4', '2023-12-12'),
('F23456', '3', '2024-03-07'),
('C12378', '9', '2023-11-10'),
('D14345', '1', '2024-07-22'),
('F12675', '6', '2024-02-17'),
('D51829', '10', '2024-09-15'),
('C34098', '7', '2023-12-29'),
('D14872', '19', '2024-01-02'),
('E01937', '28', '2024-07-19'),
('E26903', '22', '2024-10-07'),
('C45672', '2', '2024-02-23'),
('F56390', '5', '2024-09-05'),
('C72931', '15', '2024-08-15'),
('F43758', '5', '2024-09-21'),
('E41637', '4', '2024-02-18'),
('F67890', '11', '2024-06-02'),             
('F54321', '12', '2024-06-03'),             
('F98765', '13', '2024-06-04'),             
('F12346', '14', '2024-06-05'),            
('F11111', '35', '2024-06-06'),             
('F22222', '15', '2024-06-07'),             
('F33333', '16', '2024-06-08'),             
('F44444', '17', '2024-06-09'),             
('F55555', '18', '2024-06-10'),            
('F66666', '19', '2024-06-11');    


--Making the user_name attribute in the table photoapp_users unique and not null
alter table photoapp_users 
add constraint unique_user_name UNIQUE(user_name),
alter column user_name set not null;

-- Create the follow table to store information about followers
create table follow(
	follower_id text,
	followee_id text,
	follow_date date,
	primary key (follower_id, followee_id),
	foreign key (follower_id) references photoapp_users(user_id),
	foreign key (followee_id) references photoapp_users(user_id)
);

--Inserting data into follow table
insert into follow (follower_id, followee_id, follow_date) values
('F12345', 'F23456', '2024-07-01'),
('F23456', 'D14345', '2024-08-10'),
('C12378', 'F12675', '2024-07-11'),
('D14345', 'F12345', '2024-08-20'),
('F12675', 'C12378', '2024-09-21'),
('C34098', 'D14872', '2024-09-26'),
('D14872', 'F23456', '2024-09-06'),
('E41637', 'F56390', '2024-07-17'),
('E26903', 'C12378', '2024-09-22'),
('D51829', 'E01937', '2024-08-23'),
('E01937', 'D14345', '2024-09-28'),
('C72931', 'E26903', '2024-10-05'),
('F56390', 'C45672', '2024-06-16'),
('F43758', 'E26903', '2024-08-26'),
('C45672', 'C12378', '2024-10-01'),
('F67890', 'F54321', '2024-07-01'),  
('F54321', 'F98765', '2024-07-02'),  
('F98765', 'F12346', '2024-07-03'),  
('F12346', 'F11111', '2024-07-04'),  
('F11111', 'F22222', '2024-07-05'),  
('F22222', 'F33333', '2024-07-06'),  
('F33333', 'F44444', '2024-07-07'),  
('F44444', 'F55555', '2024-07-08'),  
('F55555', 'F66666', '2024-07-09'),  
('F66666', 'F67890', '2024-07-10'); 

select * from photoapp_users;
select * from photoapp_photos;
select * from photoapp_likes;
select * from follow;

-- Retrieving usernames of users who liked photo with photo_id = 4
SELECT photoapp_users.user_name 
FROM photoapp_users
JOIN photoapp_likes ON photoapp_users.user_id = photoapp_likes.user_id
WHERE photoapp_likes.photo_id = '4';

-- Retrieving usernames of users who follow user with user_id = C12378
SELECT photoapp_users.user_name 
FROM photoapp_users 
JOIN follow ON photoapp_users.user_id = follow.follower_id
WHERE follow.followee_id = 'C12378';

-- Retrieving usernames of users who liked photo with photo_id = 4 before 2024-01-01
SELECT photoapp_users.user_name 
FROM photoapp_users 
JOIN photoapp_likes ON photoapp_users.user_id = photoapp_likes.user_id
WHERE photoapp_likes.photo_id = '4'
AND photoapp_likes.like_date < '2024-01-01';

-- Retrieving usernames of users with at least one follower
SELECT photoapp_users.user_name
FROM photoapp_users
JOIN follow ON photoapp_users.user_id = follow.followee_id;

-- Retrieving image_url of photos liked by user_id = F12345
SELECT photoapp_photos.image_url
FROM photoapp_photos
JOIN photoapp_likes ON photoapp_photos.photo_id = photoapp_likes.photo_id
JOIN photoapp_users on photoapp_likes.user_id = photoapp_users.user_id
WHERE photoapp_users.user_id = 'F12345';

-- Retrieving username of users who have not posted any photos
SELECT photoapp_users.user_name
FROM photoapp_users
left join photoapp_photos ON photoapp_users.user_id = photoapp_photos.user_id
WHERE photoapp_photos.photo_id is null;

-- Retrieving usernames of users who have liked their own photos
SELECT photoapp_users.user_name
FROM photoapp_users
JOIN photoapp_likes ON photoapp_users.user_id = photoapp_likes.user_id
join photoapp_photos on photoapp_likes.photo_id = photoapp_photos.photo_id
WHERE photoapp_users.user_id = photoapp_photos.user_id;

-- Retrieving usernames of users who have posted photos but have not received any likes
SELECT photoapp_users.user_name
FROM photoapp_users
JOIN photoapp_photos ON photoapp_users.user_id = photoapp_photos.user_id
left join photoapp_likes on photoapp_photos.photo_id = photoapp_likes.photo_id
WHERE photoapp_likes.photo_id is null;

-- Retrieving usernames of users who have posted photos and received likes
SELECT photoapp_users.user_name
FROM photoapp_users
JOIN photoapp_photos ON photoapp_users.user_id = photoapp_photos.user_id
join photoapp_likes on photoapp_photos.photo_id = photoapp_likes.photo_id;

-- Retrieving usernames of users who have usernames with more than 10 characters
SELECT photoapp_users.user_name
FROM photoapp_users
where length(photoapp_users.user_name) > 10;

-- Retrieving usernames of users who have usernames ending with the letter 'n'.
SELECT photoapp_users.user_name
FROM photoapp_users
where photoapp_users.user_name like '%n';

-- Using the replace function to replace values in the username attribute
SELECT replace(photoapp_users.user_name, '_', '.')
FROM photoapp_users;

-- Retrieving the username and the number of photos published by each user
SELECT photoapp_users.user_name AS "Username", COUNT(photoapp_photos.photo_id) AS "Number of photos"
FROM photoapp_users
LEFT JOIN photoapp_photos ON photoapp_users.user_id = photoapp_photos.user_id
GROUP BY photoapp_users.user_name
ORDER BY "Number of photos" DESC;

-- Retrieving each photo's ID and the total number of likes it has received
SELECT photoapp_photos.photo_id AS "photo_id", COUNT(photoapp_likes.user_id) AS "Number of likes"
FROM photoapp_photos
LEFT JOIN photoapp_likes ON photoapp_photos.photo_id = photoapp_likes.photo_id
GROUP BY photoapp_photos.photo_id
ORDER BY "Number of likes" DESC;

-- Retrieving the username of the user who posted the earliest photo and the date in DD/MM/YYYY format
SELECT photoapp_users.user_name AS "Username", TO_CHAR(photoapp_photos.publication_date, 'DD/MM/YYYY') AS "Earliest Photo Date"
FROM photoapp_users
JOIN photoapp_photos ON photoapp_users.user_id = photoapp_photos.user_id
WHERE photoapp_photos.publication_date = (SELECT MIN(publication_date) FROM photoapp_photos);

-- Drop index for the 'user_name' column
drop index if exists idx_user_name;

-- Query without the index
explain analyze 
select * from photoapp_users where user_name = 'john_smith';

-- Create index for the 'user_name' column
create index idx_user_name on photoapp_users(user_name);

-- Query with the index
explain analyze 
select * from photoapp_users where user_name = 'john_smith';

-- Drop index for 'publication_date' column in photoapp_photos
drop index if exists idx_publication_date;

-- Query sorting without the index
explain analyze 
select * from photoapp_photos order by publication_date desc;

-- Create index for 'publication_date' column in photoapp_photos
create index idx_publication_date on photoapp_photos(publication_date desc);

-- Query sorting with the index
explain analyze 
select * from photoapp_photos order by  publication_date desc;

-- Retrieving unique users who either follow or are followed by 'F23456'
select follow.followee_id as "user_id"
from follow
where follow.follower_id = 'F23456'
union
select follow.follower_id as "user_id"
from follow
where follow.followee_id = 'F23456';

-- Retrieving user IDs appearing in both photoapp_likes and follow
select photoapp_likes.user_id
from photoapp_likes
intersect
select follow.follower_id
from follow;

-- Trigger: when a user likes a photo, they automatically follow the user who uploaded the photo
CREATE OR replace FUNCTION auto_follow()
RETURNS TRIGGER AS $$
BEGIN
	INSERT INTO follow(follower_id, followee_id, follow_date)
	SELECT NEW.user_id, photoapp_photos.user_id, NOW()
	FROM photoapp_photos
	WHERE photoapp_photos.photo_id = NEW.photo_id
	ON conflict do nothing;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creating trigger auto_follow_trigger
create trigger auto_follow_triger
AFTER INSERT ON photoapp_likes
FOR EACH ROW
EXECUTE FUNCTION auto_follow();

-- Showing the table follow before inserting new likes
SELECT * FROM follow;

-- Inserting new likes where the users don't follow each other
INSERT INTO photoapp_likes (user_id, photo_id, like_date) VALUES
('F12345', '5', '2024-11-01'),
('C34098', '1', '2024-11-02'),
('E41637', '7', '2024-11-03');

-- Showing the table follow after inserting new likes
SELECT * FROM follow;