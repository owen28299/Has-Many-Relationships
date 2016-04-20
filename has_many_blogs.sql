-- DROP USER IF EXISTS has_many_user;

-- CREATE USER has_many_user;

-- DROP DATABASE IF EXISTS has_many_blogs;

-- CREATE DATABASE has_many_blogs OWNER has_many_user;

-- \c has_many_blogs;

-- DROP TABLE IF EXISTS users CASCADE;
-- DROP TABLE IF EXISTS posts CASCADE;
-- DROP TABLE IF EXISTS comments CASCADE;

-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY,
--   username varchar(90) NOT NULL,
--   first_name varchar(90) default NULL,
--   last_name varchar(90) default NULL,
--   created_at timestamp with time zone default now() NOT NULL,
--   updated_at timestamp with time zone default now() NOT NULL
--   );

-- CREATE TABLE posts (
--   id SERIAL PRIMARY KEY,
--   title varchar(180) default NULL,
--   url varchar(510) default NULL,
--   content text default NULL,
--   created_at timestamp with time zone default now() NOT NULL,
--   updated_at timestamp with time zone default now() NOT NULL,
--   user_id integer REFERENCES users
--   );

-- CREATE TABLE comments (
--   id SERIAL PRIMARY KEY,
--   body varchar(510) default NULL,
--   created_at timestamp with time zone default now() NOT NULL,
--   updated_at timestamp with time zone default now() NOT NULL,
--   user_id integer REFERENCES users,
--   post_id integer REFERENCES posts
--   );

-- \i './scripts/blog_data.sql';
