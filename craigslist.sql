-- Data Modeling Exercise: Schema Design
-- Part Two: Craigslist

DROP DATABASE IF EXISTS craigslist;
CREATE DATABASE craigslist;
\c craigslist

CREATE TABLE regions (
    id SERIAL NOT NULL PRIMARY KEY,
    name text NOT NULL
);


CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY,
    pref_region INT NOT NULL REFERENCES regions,
    username text NOT NULL UNIQUE;
    password tex NOT NULL
);


CREATE TABLE categories (
    id SERIAL NOT NULL PRIMARY KEY,
    name text NOT NULL
);


CREATE TABLE posts (
    id SERIAL NOT NULL PRIMARY KEY,
    title TEXT NOT NULL,
    text TEXT NOT NULL,
    location TEXT NOT NULL,
    user_id INT NOT NULL REFERENCES users,
    category_id INT NOT NULL REFERENCES categories,
    region_id INT NOT NULL REFERENCES regions,
);

