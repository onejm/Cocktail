
CREATE TABLE IF NOT EXISTS cocktail(
    c_id VARCHAR(10) NOT NULL,
    c_name VARCHAR(20),
    c_description TEXT(1000),
    c_category VARCHAR(20),
    c_filename VARCHAR(20),
    c_youtube VARCHAR(200),
    c_recipe TEXT(1000),
    c_ingredient TEXT(500),
    PRIMARY KEY (c_id)
)default CHARSET=utf8;

CREATE TABLE IF NOT EXISTS product(
    p_id VARCHAR(10) NOT NULL,
    p_name VARCHAR(20),
    p_unitPrice INTEGER(10),
    p_description TEXT(1000),
    p_category VARCHAR(20),
    p_manufacturer VARCHAR(20),
    p_unitsInStock LONG,
    p_filename VARCHAR(20)
)default CHARSET=utf8;

show tables;

CREATE TABLE member(
    id VARCHAR(30) not null,
    password VARCHAR(30) not null,
    name VARCHAR(30) not null,
    gender VARCHAR(7),
    birth vARCHAR(20),
    mail VARCHAR(30),
    phone VARCHAR(30),
    address VARCHAR(90),
    regist_day VARCHAR(50),
    PRIMARY KEY (id)
)default CHARSET=utf8;
