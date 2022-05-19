package com.example.manage_me.dao;

import java.util.List;

public interface Category {
    //list of all categories
    List<Category> all();
    //Show category object by title
    Category getCat (String category);
}
