-- ========================================================
-- 1. TABLE CREATION
-- ========================================================

CREATE TABLE cpi (
    year INT PRIMARY KEY, 
    cpi NUMERIC
);

CREATE TABLE food_prices (
    month INT, 
    year INT, 
    state VARCHAR, 
    unit_value INT, 
    unit_measure VARCHAR, 
    price_per_kg NUMERIC, 
    PRIMARY KEY (state, year, month)
);

CREATE TABLE ndvi (
    state VARCHAR, 
    year INT, 
    month INT, 
    actu_vim NUMERIC, 
    hist_vim NUMERIC, 
    PRIMARY KEY (state, year, month)
);




-- ============================================================
-- 2. DATA IMPORT (COPY STATEMENTS)
-- ==========================================================

-- Copy Rainfall Data
COPY rainfall(state, year, month, actu_rfh, hist_rfh)
FROM 'C:/mydata/rainfall_1.csv'
DELIMITER ','
CSV HEADER;

-- Copy NDVI Data
COPY ndvi(state, year, month, actu_vim, hist_vim)
FROM 'C:/mydata/ndvi_1.csv'
DELIMITER ','
CSV HEADER;

-- Copy Food Prices Data
COPY food_prices(month, year, state, unit_value, unit_measure, price_per_kg)
FROM 'C:/mydata/food_prices_1.csv'
DELIMITER ','
CSV HEADER;

-- Copy CPI Data
COPY cpi(year, cpi)
FROM 'C:/mydata/cpi_1.csv'
DELIMITER ','
CSV HEADER;
CREATE TABLE rainfall (
    state VARCHAR, 
    year INT, 
    month INT, 
    actu_rfh NUMERIC, 
    hist_rfh NUMERIC, 
    PRIMARY KEY (state, year, month)
);
