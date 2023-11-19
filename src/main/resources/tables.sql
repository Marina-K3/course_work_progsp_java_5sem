-- Создание таблицы cities
CREATE TABLE cities (
                        id BIGINT PRIMARY KEY AUTO_INCREMENT,
                        name VARCHAR(255)
);

-- Создание таблицы countries
CREATE TABLE countries (
                           id BIGINT PRIMARY KEY AUTO_INCREMENT,
                           name VARCHAR(255)
);

-- Создание таблицы flights
CREATE TABLE flights (
                         id BIGINT PRIMARY KEY AUTO_INCREMENT,
                         departure_city_id BIGINT,
                         arrival_city_id BIGINT,
                         departure_time DATETIME,
                         arrival_time DATETIME,
                         total_seats INT,
                         occupied_seats INT,
                         FOREIGN KEY (departure_city_id) REFERENCES cities (id),
                         FOREIGN KEY (arrival_city_id) REFERENCES cities (id)
);

-- Создание таблицы hotels
CREATE TABLE hotels (
                        id BIGINT PRIMARY KEY AUTO_INCREMENT,
                        name VARCHAR(255),
                        star_rating INT,
                        city_id BIGINT,
                        FOREIGN KEY (city_id) REFERENCES cities (id)
);

-- Создание таблицы images
CREATE TABLE images (
                        id BIGINT PRIMARY KEY AUTO_INCREMENT,
                        name VARCHAR(255) UNIQUE,
                        image_data LONGBLOB
);

-- Создание таблицы orders
CREATE TABLE orders (
                        id BIGINT PRIMARY KEY AUTO_INCREMENT,
                        user_id BIGINT,
                        tour_id BIGINT,
                        order_date DATE,
                        cancelled BOOLEAN,
                        FOREIGN KEY (user_id) REFERENCES users (id),
                        FOREIGN KEY (tour_id) REFERENCES tours (id)
);

-- Создание таблицы tours
CREATE TABLE tours (
                       id BIGINT PRIMARY KEY AUTO_INCREMENT,
                       departure_time DATETIME,
                       arrival_time DATETIME,
                       image_id BIGINT,
                       price FLOAT,
                       duration_days INT,
                       name VARCHAR(255),
                       description TEXT,
                       country_id BIGINT,
                       city_id BIGINT,
                       hotel_id BIGINT,
                       flight_id BIGINT,
                       return_flight_id BIGINT,
                       FOREIGN KEY (image_id) REFERENCES images (id),
                       FOREIGN KEY (country_id) REFERENCES countries (id),
                       FOREIGN KEY (city_id) REFERENCES cities (id),
                       FOREIGN KEY (hotel_id) REFERENCES hotels (id),
                       FOREIGN KEY (flight_id) REFERENCES flights (id),
                       FOREIGN KEY (return_flight_id) REFERENCES flights (id)
);

-- Создание таблицы users
CREATE TABLE users (
                       id BIGINT PRIMARY KEY AUTO_INCREMENT,
                       last_name VARCHAR(255),
                       first_name VARCHAR(255),
                       passport_number VARCHAR(255),
                       phone VARCHAR(255),
                       email VARCHAR(255),
                       is_active BOOLEAN,
                       password VARCHAR(255),
                       role VARCHAR(255)
);