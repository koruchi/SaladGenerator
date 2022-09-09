CREATE TYPE categoriesTypes AS ENUM(     'greens',
                                	'vegetable',
                                	'fruit',
                                	'grains',
                                	'pasta',
                                	'proteins_vege',
                                	'proteins_animal',
                                	'sauce_vege',
                                	'sauce_animal',
                                	'flavour',
                                	'crunchy_vege',
                                	'crunchy_animal'
                                	);
CREATE TYPE origin AS ENUM('vegetarian', 'animal');


Create TABLE categories (
                         name categoriesTypes NOT NULL,
                         origin origin NOT NULL,
                         CONSTRAINT PK_Categories PRIMARY KEY (name)
);

CREATE TABLE ingredients (
                        name varchar(255) NOT NULL,
                        type categoriesTypes NOT NULL,
                        PRIMARY KEY (name),
                        CONSTRAINT FK_Ingredients FOREIGN KEY (type)
                        REFERENCES categories(name)
);

INSERT INTO categories (name, origin)
VALUES ('greens', 'vegetarian'),
        ('proteins_vege', 'vegetarian'),
        ('proteins_animal', 'animal'),
        ('vegetable',  'vegetarian'),
        ('fruit', 'vegetarian'),
        ('grains',  'vegetarian'),
        ('pasta',  'vegetarian'),
        ('sauce_vege',  'vegetarian'),
        ('sauce_animal',  'vegetarian'),
        ('flavour',  'vegetarian'),
        ('crunchy_vege',  'vegetarian'),
        ('crunchy_animal', 'animal');


INSERT INTO ingredients (name,type)
VALUES ('meat', 'proteins_animal'),
       ('cheese', 'proteins_animal'),
       ('chickpeas', 'proteins_vege'),
       ('arugula', 'greens'),
       ('lettuce', 'greens'),
       ('spinach', 'greens'),
       ('tomato', 'vegetable'),
       ('cucumber', 'vegetable'),
       ('eggplant', 'vegetable'),
       ('mushroom', 'vegetable'),
       ('beetroot', 'vegetable'),
       ('corn', 'vegetable'),
       ('zucchini', 'vegetable'),
       ('carrot', 'vegetable'),
       ('orange', 'fruit'),
       ('cranberry', 'fruit'),
       ('quinoa', 'grains'),
       ('couscous', 'grains'),
       ('black rice', 'grains'),
       ('buckweat groats', 'grains'),
       ('barley groats', 'grains');


