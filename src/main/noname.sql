CREATE TABLE CATEGORIES (
                         TYPE varchar(255) NOT NULL,
                         ORIGIN varchar(255) NOT NULL,
                         CONSTRAINT PK_Categories PRIMARY KEY (TYPE)
);

CREATE TABLE INGREDIENTS (
                        NAME varchar(255) NOT NULL,
                        TYPE  varchar(255) NOT NULL,
                        PRIMARY KEY (NAME),
                        CONSTRAINT FK_Ingredients FOREIGN KEY (TYPE)
                        REFERENCES CATEGORIES(TYPE)
);

INSERT INTO CATEGORIES (TYPE, ORIGIN)
VALUES
       ('Vegetable', 'Vegetable'),
       ('Fruit', 'Vegetable'),
       ('Nut', 'Vegetable'),
       ('Berries', 'Vegetable'),
       ('Cheese', 'Animal'),
       ('DressingVegetable', 'Vegetable'),
       ('DressingAnimal', 'Animal'),
       ('Eggs', 'Animal'),
       ('Meat', 'Animal');

INSERT INTO Ingredients (NAME, TYPE)
VALUES ('Apple', 'Fruit'),
       ('Orange', 'Fruit'),
       ('Tomato', 'Vegetable');

