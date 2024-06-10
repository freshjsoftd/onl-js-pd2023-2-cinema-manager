-- DROP TABLE genres;
-- CREATE TABLE genres (
--     id SERIAL,
--     title VARCHAR(100) NOT NULL UNIQUE,
--     description TEXT,
--     PRIMARY KEY(id)
-- );
-- CREATE TABLE countries(
--     id SERIAL,
--     title VARCHAR(10) NOT NULL UNIQUE,
--     description TEXT,
--     PRIMARY KEY(id)
-- );
CREATE TABLE locations(
    id SERIAL,
    countryId INT,
    PRIMARY KEY(id),
    FOREIGN KEY(countryId) REFERENCES countries ON DELETE CASCADE
);