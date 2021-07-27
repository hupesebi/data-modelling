-- Data Modeling Exercise: Schema Design
-- Part Three: Soccer League

DROP DATABASE IF EXISTS soccer_league;
CREATE DATABASE soccer_league;
\c soccer_league

CREATE TABLE teams (
    id SERIAL NOT NULL PRIMARY KEY,
    name text NOT NULL,
    result_point INT
);


CREATE TABLE players (
    id SERIAL NOT NULL PRIMARY KEY,
    name text NOT NULL,
    team_id INT NOT NULL REFERENCES teams
);


CREATE TABLE referees (
    id SERIAL NOT NULL PRIMARY KEY,
    name text NOT NULL,
);

CREATE TABLE season (
    id SERIAL NOT NULL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE
);


CREATE TABLE matches (
    id SERIAL NOT NULL PRIMARY KEY,
    location text NOT NULL,
    team_1 INT REFERENCES teams,
    team_2 INT REFERENCES teams,
    referee_id INT REFERENCES referees,
    season_id INT REFERENCES seasons
);


CREATE TABLE goals (
    id SERIAL NOT NULL PRIMARY KEY,
    goals INT;
    match_id INT REFERENCES matches,
    player_id INT REFERENCES players
);
