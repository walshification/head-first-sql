-- create a database
-- CREATE DATABASE gregs_list;
createdb gregs_list;

-- Create a table within the working database
CREATE TABLE donut_list
(
    donut_name VARCHAR(10),
    donut_type VARCHAR(6)
);
-- CREATE TABLE

-- create a new table for contacts
CREATE TABLE my_contacts
(
    last_name VARCHAR(30),
    first_name VARCHAR(20),
    email VARCHAR(50),
    birthday DATE,
    profession VARCHAR(50),
    location VARCHAR(50),
    status VARCHAR(20),
    interests VARCHAR(100),
    seeking VARCHAR(100)
);
-- CREATE TABLE

-- describe table
\d my_contacts;

                      Table "public.my_contacts"
   Column   |          Type          | Collation | Nullable | Default
------------+------------------------+-----------+----------+---------
 last_name  | character varying(30)  |           |          |
 first_name | character varying(20)  |           |          |
 email      | character varying(50)  |           |          |
 birthday   | date                   |           |          |
 profession | character varying(50)  |           |          |
 location   | character varying(50)  |           |          |
 status     | character varying(20)  |           |          |
 interests  | character varying(100) |           |          |
 seeking    | character varying(100) |           |          |

-- delete the table and its data
DROP TABLE my_contacts;
-- DROP TABLE

CREATE TABLE my_contacts
(
    last_name VARCHAR(30),
    first_name VARCHAR(20),
    email VARCHAR(50),
    gender CHAR(1),  -- M, F, N
    birthday DATE,
    profession VARCHAR(50),
    location VARCHAR(50),
    status VARCHAR(20),
    interests VARCHAR(100),
    seeking VARCHAR(100)
);
-- CREATE TABLE

-- insert data into your table
INSERT INTO my_contacts
(last_name, first_name, email, gender, birthday, profession, location, status, interests, seeking)
VALUES
('Anderson', 'Jillian', 'jull_anderson@breakneckpizza.com', 'F', '1980-09-05', 'Technical Writer', 'Palo Alto, CA', 'Single', 'Kayaking, Reptiles', 'Relationship, Friends');
-- INSERT 0 1

-- insert partial data
INSERT INTO my_contacts
(first_name, email, profession, location)
VALUES
('Pat', 'patpost@breakneckpizza.com', 'Postal Worker', 'Princeton, NJ');
-- INSERT 0 1

-- look at the rows
SELECT * FROM my_contacts;

 last_name | first_name |              email               | gender |  birthday  |    profession    |   location    | status |     interests      |        seeking
-----------+------------+----------------------------------+--------+------------+------------------+---------------+--------+--------------------+-----------------------
 Anderson  | Jillian    | jull_anderson@breakneckpizza.com | F      | 1980-09-05 | Technical Writer | Palo Alto, CA | Single | Kayaking, Reptiles | Relationship, Friends
           | Pat        | patpost@breakneckpizza.com       |        |            | Postal Worker    | Princeton, NJ |        |                    |
(2 rows)
