\c has_many_blogs;

-- \d+;

-- SELECT * FROM users;
-- SELECT * FROM posts
-- WHERE user_id = 100;

-- SELECT posts.* ,
--        users.first_name,
--        users.last_name
-- FROM posts INNER JOIN users
-- ON posts.user_id = users.id WHERE
--    posts.user_id = 200;

-- SELECT posts.*,
--        users.username
-- FROM posts INNER JOIN users
-- ON posts.user_id = users.id WHERE
--    users.first_name = 'Norene' AND
--    users.last_name = 'Schmitt'
-- ;

-- SELECT users.username
-- FROM users
-- INNER JOIN posts ON users.id = posts.user_id
-- WHERE posts.created_at >= '2015-01-01 00:00:00-00';

-- SELECT
--   posts.title,
--   posts.content,
--   users.username
-- FROM posts INNER JOIN users
-- ON posts.user_id = users.id
-- WHERE users.created_at < '2015-01-01 00:00:00-00';

-- SELECT comments.*, posts.title AS "Post Title" FROM comments
-- INNER JOIN posts
-- ON comments.post_id = posts.id;

-- SELECT comments.id,
--        comments.body AS comment_body,
--        comments.created_at,
--        comments.updated_at,
--        comments.user_id,
--        comments.post_id,
--        posts.title AS post_title,
--        posts.url AS post_url
-- FROM comments
-- INNER JOIN posts
-- ON comments.post_id = posts.id
-- WHERE posts.created_at <= '2015-01-01 00:00:00-00';

-- SELECT comments.id,
--        comments.body AS comment_body,
--        comments.created_at,
--        comments.updated_at,
--        comments.user_id,
--        comments.post_id,
--        posts.title AS post_title,
--        posts.url AS post_url
-- FROM comments
-- INNER JOIN posts
-- ON comments.post_id = posts.id
-- WHERE posts.created_at > '2015-01-01 00:00:00-00';


-- SELECT comments.id,
--        comments.body AS comment_body,
--        comments.created_at,
--        comments.updated_at,
--        comments.user_id,
--        comments.post_id,
--        posts.title AS post_title,
--        posts.url AS post_url
-- FROM comments
-- INNER JOIN posts
-- ON comments.post_id = posts.id
-- WHERE comments.body LIKE '%USB%';


-- SELECT posts.title AS post_title,
--        users.first_name,
--        users.last_name,
--        comments.body
-- FROM posts
-- INNER JOIN comments
-- ON posts.id = comments.post_id AND
-- comments.body LIKE '%matrix%'
-- INNER JOIN users
-- ON users.id = posts.user_id;


-- SELECT users.first_name,
--        users.last_name,
--        comments.body AS comment_body
-- FROM users
-- INNER JOIN comments
-- ON users.id = comments.user_id AND
--    comments.body LIKE '%SSL%'
-- INNER JOIN posts
-- ON comments.post_id = posts.id AND
--    posts.content LIKE '%dolorum%';


SELECT users.first_name AS post_author_first_name,
       users.last_name AS post_author_last_name,
       posts.title AS post_title,
       users.username AS comment_author_username,
       comments.body AS comment_body
FROM users
  INNER JOIN posts
  ON users.id = posts.user_id
  INNER JOIN comments
  ON posts.id = comments.post_id
    WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%')
    AND posts.content LIKE '%nemo%'


-- WITH
--   user_comments AS (

--     ),
--   user_posts AS (
--     )
-- SELECT * FROM user_comments, user_posts;