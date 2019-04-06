-- Create and use world_rate_db
CREATE DATABASE world_rate_db;
USE world_rate_db;

-- Create tables for raw data to be loaded into
CREATE TABLE countries (
  code varchar(3) PRIMARY KEY,
  name TEXT,
  official_name TEXT,
  currency_unit TEXT,
  region TEXT,
  income_group TEXT,
  source TEXT
);

CREATE TABLE unemployment_rates (
  id INT PRIMARY KEY auto_increment,
  country_code varchar(3),
  year INT,
  rate decimal(11,8)
);


