DROP DATABASE IF EXISTS techblog_db;
CREATE DATABASE techblog_db;
-- Create the database
CREATE DATABASE IF NOT EXISTS tech_blog_db;

-- Use the database
USE tech_blog_db;

-- Create a Users table
CREATE TABLE Users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(60) NOT NULL
);

-- Create a Posts table
CREATE TABLE Projects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT,
  user_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- -- Create a Comments table
-- CREATE TABLE Comments (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   text TEXT NOT NULL,
--   user_id INT,
--   post_id INT,
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   FOREIGN KEY (user_id) REFERENCES Users(id),
--   FOREIGN KEY (post_id) REFERENCES Posts(id)
-- );
