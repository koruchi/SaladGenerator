CREATE TABLE Categories (
                         Type varchar(255) NOT NULL,
                         Origin varchar(255) NOT NULL,
                         CONSTRAINT PK_Categories PRIMARY KEY (Type)
);

CREATE TABLE Ingredients (
                        Name varchar(255) NOT NULL,
                        Type  varchar(255) NOT NULL,
                        PRIMARY KEY (Name),
                        CONSTRAINT FK_Ingredients FOREIGN KEY (Type)
                        REFERENCES Categories(Type)
);

INSERT INTO Categories (Type, Origin)
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

INSERT INTO Ingredients (Name, Type)
VALUES ('Apple', 'Fruit'),
       ('Orange', 'Fruit'),
       ('Tomato', 'Vegetable');

