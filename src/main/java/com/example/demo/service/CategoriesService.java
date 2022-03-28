package com.example.demo.service;

import com.example.demo.model.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriesService {
/*    private final CategoriesRepository categoriesRepository;

    public CategoriesService(CategoriesRepository categoriesRepository) {
        this.categoriesRepository = categoriesRepository;
    }*/

    public List<Category> getAllCategories() {
        return List.of(
                new Category("cheese", "animal"),
                new Category("eggs", "animal")
        );
    }
}
