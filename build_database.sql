-- Build Kanto Pokedex Database

-- Create base_stats Table
CREATE TABLE base_stats(
    national_no VARCHAR PRIMARY KEY,
    pokemon VARCHAR,
    type_1 VARCHAR,
    type_2 VARCHAR,
    hp INTEGER,
    attack INTEGER,
    defense INTEGER,
    sp_atk INTEGER,
    sp_def INTEGER,
    speed INTEGER,
    total INTEGER
);

-- Import processed base_stats CSV into base_stats Table
COPY base_stats FROM 'data/processed/base_stats.csv' (HEADER TRUE, nullstr 'NA');

-- Create egg_groups Table
CREATE TABLE egg_groups(
    egg_group_id INTEGER PRIMARY KEY,
    egg_group VARCHAR
);

-- Import processed egg_groups CSV into egg_groups Table
COPY egg_groups FROM 'data/processed/egg_groups.csv' (HEADER TRUE, nullstr 'NA');

-- Create egg_info Table
CREATE TABLE egg_info(
    national_no VARCHAR PRIMARY KEY,
    egg_group_1 INTEGER,
    egg_group_2 INTEGER
);

-- Import processed egg_info CSV into egg_info Table
COPY egg_info FROM 'data/processed/egg_info.csv' (HEADER TRUE, nullstr 'NA');

-- Create growth_rate Table
CREATE TABLE growth_rate(
    growth_rate_id INTEGER PRIMARY KEY,
    growth_rate VARCHAR
);

-- Import processed growth_rate CSV into growth_rate Table
COPY growth_rate FROM 'data/processed/growth_rate.csv' (HEADER TRUE, nullstr 'NA');

-- Create measurements Table
CREATE TABLE measurements(
    national_no VARCHAR PRIMARY KEY,
    pokemon VARCHAR,
    height_m FLOAT,
    weight_kg FLOAT,
    base_exp INTEGER
);

-- Import processed measurements CSV into measurements Table
COPY measurements FROM 'data/processed/measurements.csv' (HEADER TRUE, nullstr 'NA');

-- Create species Table
CREATE TABLE species(
    national_no VARCHAR PRIMARY KEY,
    pokemon VARCHAR,
    species VARCHAR
);

-- Import processed species CSV into species Table
COPY species FROM 'data/processed/species.csv' (HEADER TRUE, nullstr 'NA');

-- Create training_breeding_stats Table
CREATE TABLE training_breeding_stats(
    national_no VARCHAR PRIMARY KEY,
    pokemon  VARCHAR,
    catch_rate INTEGER,
    base_friendship INTEGER,
    growth_rate_id INTEGER,
    gender_f FLOAT,
    egg_cycles INTEGER,
    cycle_steps INTEGER
);

-- Import processed training_breeding_stats CSV into training_breeding_stats Table
COPY training_breeding_stats FROM 'data/processed/training_breeding_stats.csv' (HEADER TRUE, nullstr 'NA');