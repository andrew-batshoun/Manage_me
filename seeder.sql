USE manage_me;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads_categories;

CREATE TABLE user (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      username VARCHAR(240) NOT NULL UNIQUE,
                      password VARCHAR(255) NOT NULL,
                      PRIMARY KEY (id)
);

CREATE TABLE items (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_id INT UNSIGNED NOT NULL,
                       name VARCHAR(240) NOT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (user_id) REFERENCES user(id)
);

# table to store category names being created
CREATE TABLE categories (
                            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                            category VARCHAR(240) UNIQUE NOT NULL,
                            PRIMARY KEY (id)
);
# table for the categories each add can fit into
CREATE TABLE items_categories (
                                  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                  items_id INT UNSIGNED NOT NULL,
                                  category_id INT UNSIGNED NOT NULL,
                                  PRIMARY KEY (id),
                                  FOREIGN KEY (items_id) REFERENCES items(id),
                                  FOREIGN KEY (category_id) REFERENCES categories(id)
);
