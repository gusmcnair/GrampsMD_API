CREATE TABLE ailments (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    ailment TEXT NOT NULL,
    treatment TEXT NOT NULL,
    illustration TEXT NOT NULL
);