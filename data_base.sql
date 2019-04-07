-- Create and use world_rate_db
CREATE DATABASE IF NOT EXISTS world_rate_db;
USE world_rate_db;

-- Create tables for raw data to be loaded into
CREATE TABLE IF NOT EXISTS countries (
  code varchar(3) PRIMARY KEY,
  name TEXT,
  official_name TEXT,
  currency_unit TEXT,
  region TEXT,
  income_group TEXT,
  source TEXT
);

CREATE TABLE IF NOT EXISTS unemployment_rates (
  id INT PRIMARY KEY auto_increment not null,
  country_code varchar(3),
  year INT,
  rate decimal(11,8)
);

ALTER TABLE unemployment_rates 
ADD CONSTRAINT uc_unemployment_rates UNIQUE (country_code, year);
