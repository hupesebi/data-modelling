-- Data Modeling Exercise: Schema Design
-- Part One: Medical Center

DROP DATABASE IF EXISTS  medical_center;
CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name text   NOT NULL,
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name text   NOT NULL,
);

CREATE TABLE visits(
    id SERIAL PRIMARY KEY,
    patient_id int   NOT NULL REFERENCES patients,
    doctor_id int   NOT NULL REFERENCES doctors
);

CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    name text   NOT NULL
    description TEXT NOT NULL,
);

CREATE TABLE diagnoses (
    id SERIAL PRIMARY KEY,
    visits_id int   NOT NULL REFERENCES visits,
    disease_id int   NOT NULL REFERENCES diseases,
);

