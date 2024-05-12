-- Tabela 'users'
CREATE TABLE users (
    id INTEGER AUTO_INCREMENT,
    email VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY (id)
);
COMMENT ON TABLE users IS 'tabela de usuarios da arquitetura tutores';

-- Tabela 'user-forms'
CREATE TABLE user_forms (
    id INTEGER AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(30),
    social_name INTEGER,
    phone_number INTEGER,
    age INTEGER,
    gender VARCHAR(30),
    education VARCHAR(50),
    type_of_housing VARCHAR(100),
    family_constitution VARCHAR(70),
    income INTEGER,
    live_in_the_house INTEGER,
    id_users INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_users) REFERENCES users(id)
);
COMMENT ON TABLE user_forms IS 'tabela para salvar os dados do usuario na arquitetura formularios';

-- Tabela 'have-forms'
CREATE TABLE have_forms (
    id INTEGER AUTO_INCREMENT,
    time_with_dog VARCHAR(30),
    first_dog VARCHAR(10),
    other_pets VARCHAR(10),
    dogs_age VARCHAR(10),
    breed VARCHAR(10),
    where_get VARCHAR(30),
    paid_to_acquire VARCHAR(5),
    age_reached VARCHAR(30),
    dog_personality VARCHAR(30),
    why_do_have VARCHAR(100),
    others VARCHAR(50),
    characteristics VARCHAR(50),
    decision VARCHAR(30),
    couldn_t_keep VARCHAR(30),
    how_vet VARCHAR(10),
    say_about VARCHAR(50),
    id_user_forms INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_forms) REFERENCES user_forms(id)
);
COMMENT ON TABLE have_forms IS 'Tabela de quem tem cao da arquitetura formularios';

-- Tabela 'dog-forms'
CREATE TABLE dog_forms (
    id INTEGER AUTO_INCREMENT,
    dog_name VARCHAR(30),
    gender VARCHAR(30),
    castrated VARCHAR(30),
    breed VARCHAR(50),
    id_have_forms INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_have_forms) REFERENCES have_forms(id)
);
COMMENT ON TABLE dog_forms IS 'tabela para preencher dados do cachorro na arquitetura formularios';

-- Tabela 'had-forms'
CREATE TABLE had_forms (
    id INTEGER AUTO_INCREMENT,
    dogs_name VARCHAR(50),
    dogs_personality VARCHAR(50),
    time_with_you INTEGER,
    first_dog VARCHAR(50),
    other_pets VARCHAR(50),
    pet_age INTEGER,
    castrated VARCHAR(50),
    pet_race VARCHAR(50),
    where_came_from VARCHAR(50),
    pet_price VARCHAR(50),
    why VARCHAR(50),
    characteristics VARCHAR(50),
    name_decision VARCHAR(50),
    most_like VARCHAR(50),
    dont_like VARCHAR(50),
    veterinary VARCHAR(50),
    stopped_living VARCHAR(50),
    new_dog VARCHAR(50),
    id_user_forms INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_forms) REFERENCES user_forms(id)
);
COMMENT ON TABLE had_forms IS 'Tabela de quem teve cao da arquitetura formularios';

-- Tabela 'want-forms'
CREATE TABLE want_forms (
    id INTEGER AUTO_INCREMENT,
    characteristics VARCHAR(100),
    live_with_dog VARCHAR(50),
    nickname VARCHAR(50),
    pretend VARCHAR(50),
    include VARCHAR(50),
    what_personality VARCHAR(50),
    research_expenses VARCHAR(50),
    id_user_forms INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_forms) REFERENCES user_forms(id)
);
COMMENT ON TABLE want_forms IS 'Tabela de quem quer ter cao da arquitetura formularios';

-- Tabela 'null-forms'
CREATE TABLE null_forms (
    id INTEGER AUTO_INCREMENT,
    dont_want VARCHAR(100),
    id_user_forms INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user_forms) REFERENCES user_forms(id)
);
COMMENT ON TABLE null_forms IS 'Tabela de quem nao quer ter cao da arquitetura formularios';

-- Tabela 'address'
CREATE TABLE address (
    id INTEGER AUTO_INCREMENT,
    country VARCHAR(100),
    state VARCHAR(100),
    city VARCHAR(100),
    neighborhood VARCHAR(100),
    id_users INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_users) REFERENCES users(id)
);
COMMENT ON TABLE address IS 'tabela de enderecos';
