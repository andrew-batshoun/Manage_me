package com.example.manage_me.dao;

import java.util.List;

public interface Items {
    //list all Items
    List<Items> all();
    //insert new item
    List<Items> insert(Items item);
    //search for item by name
    Items findByName(String item);
    //search item by category
    List<Items> findByCat(String Cat);
    //update item
    void update(Items item);
    //delete item
    void delete(long id);
}
