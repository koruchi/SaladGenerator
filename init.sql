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
        ('vegetable', 'vegetarian'),
        ('fruit', 'vegetarian'),
        ('grains', 'vegetarian'),
        ('pasta', 'vegetarian'),
        ('sauce_vege', 'vegetarian'),
        ('sauce_animal', 'vegetarian'),
        ('flavour',  'vegetarian'),
        ('crunchy_vege', 'vegetarian'),
        ('crunchy_animal', 'animal');


INSERT INTO ingredients (name,type)
VALUES ('meat', 'proteins_animal'),
       ('cheese', 'proteins_animal'),
       ('todo1', 'proteins_vege'), -- grains входит в эту категорию полностью
       ('tofu', 'proteins_vege'),
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
       ('green apple', 'fruit'),
       ('quinoa', 'grains'),
       ('couscous', 'grains'),
       ('black rice', 'grains'),
       ('buckweat groats', 'grains'),
       ('barley groats', 'grains'),
       ('lemon juice', 'sauce_vege'),
       ('dijon mustard', 'sauce_vege'),
       ('extra virgin olive oil', 'sauce_vege'),
       ('grapeseed oil', 'sauce_vege'),
       ('soy sauce', 'sauce_vege'),
       ('flaxseed oil', 'sauce_vege'),
       ('grape vinegar', 'sauce_vege'),
       ('vinaigrette', 'sauce_vege'),
       ('chili tamarind dressing', 'sauce_vege'),
       ('truffle oil', 'sauce_vege'),
       ('pumpkin seed oil', 'sauce_vege'),
       ('apple vinegar', 'sauce_vege'),
       ('balsamic vinegar', 'sauce_vege'),
       ('cheese sauce', 'sauce_animal'),
       ('french dressing', 'sauce_animal'),
       ('italian herb dressing', 'sauce_animal'),
       ('asian dressing', 'sauce_animal'),
       ('ranch dressing', 'sauce_animal'),
       ('mayonnaise', 'sauce_animal'),
       ('pesto', 'sauce_animal'),
       ('Caesar dressing', 'sauce_animal'),
       ('honey mustard dressing', 'sauce_animal'),
       ('thousand island dressing', 'sauce_animal'),
       ('lemon zest', 'flavour'),
       ('cured olives', 'flavour'),
       ('croutons', 'flavour'),
       ('basil', 'flavour'),
       ('oregano', 'flavour'),
       ('chives', 'flavour'),
       ('dill', 'flavour'),
       ('chili', 'flavour'),
       ('parsley', 'flavour'),
       ('todo2', 'crunchy_vege'),
        ('todo3', 'crunchy_vege'),
        ('todo4', 'crunchy_vege'),
        ('todo5', 'crunchy_animal'),
        ('todo6', 'crunchy_animal')
       ;



/* step 1: add just 2 of each
   	    'greens', --
        'vegetable',--
        'fruit',--
        'grains',--
        'pasta',
        'proteins_vege',--
        'proteins_animal',--
        'sauce_vege',
        'sauce_animal',
        'flavour',
        'crunchy_vege',
        'crunchy_animal'
        */