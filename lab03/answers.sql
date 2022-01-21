-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name 
FROM users
Order by last_name;



-- Exercise 4
SELECT id, image_url, user_id 
FROM posts
where user_id=26;




-- Exercise 5
SELECT id, image_url, user_id 
FROM posts
where user_id=26 or user_id=12;



-- Exercise 6
SELECT count(*) FROM posts;




-- Exercise 7
SELECT user_id, count(*) FROM comments
GROUP BY user_id
ORDER by count desc;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id,users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users ON posts.user_id = users.id
WHERE posts.user_id = 26 or posts.user_id = 12;


-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id
FROM following
INNER JOIN posts ON following.following_id= posts.user_id
WHERE following.user_id = 26;



-- Exercise 10
-- skipped

-- Exercise 11
INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 219);

INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 220);

INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 221);


-- Exercise 12
DELETE FROM bookmarks
WHERE user_id=26 and post_id=219;

DELETE FROM bookmarks
WHERE user_id=26 and post_id=220;

DELETE FROM bookmarks
WHERE user_id=26 and post_id=221;

-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com' 
WHERE id=26;



-- Exercise 14
