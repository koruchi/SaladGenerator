package com.example.demo.service;

import com.example.demo.model.Category;
import com.example.demo.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService implements ICategoryService {
/*    private final CategoriesRepository categoriesRepository;

    public CategoriesService(CategoriesRepository categoriesRepository) {
        this.categoriesRepository = categoriesRepository;
    }*/

/*    public List<Category> getAllCategories() {
        return List.of(
                new Category("cheese", "animal"),
                new Category("eggs", "animal")
        );
    }
 */
    @Autowired
    private CategoryRepository repository;

    @Override
    public List<Category> findAll() {

        var category = (List<Category>) repository.findAll();

        return category;
    }

}