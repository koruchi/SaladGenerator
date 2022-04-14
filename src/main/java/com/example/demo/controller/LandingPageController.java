package com.example.demo.controller;

import com.example.demo.service.CategoryService;
import com.example.demo.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LandingPageController {
    @Autowired
    //private ICategoryService categoryService;
    private final CategoryService categoryService;

    public LandingPageController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @RequestMapping("/")
    public ModelAndView showFirstView(ModelAndView modelAndView) {
        modelAndView.setViewName("first-view");
        modelAndView.getModel().put("category", categoryService. findAll());

        return modelAndView;
    }

}
/*
@Controller
public class MyController {
    @Autowired
    private ICityService cityService;
    @GetMapping("/showCities")
    public String findCities(Model model) {

        var cities = (List<City>) cityService.findAll();

        model.addAttribute("cities", cities);

        return "showCities";
    }
}*/