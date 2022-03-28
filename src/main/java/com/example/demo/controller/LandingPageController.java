package com.example.demo.controller;

import com.example.demo.service.CategoriesService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class LandingPageController {
    private final CategoriesService categoriesService;

    public LandingPageController(CategoriesService categoriesService) {
        this.categoriesService = categoriesService;
    }

    @RequestMapping("/")
    public ModelAndView showFirstView(ModelAndView modelAndView) {
        modelAndView.setViewName("first-view");
        modelAndView.getModel().put("categories", categoriesService.getAllCategories());

        return modelAndView;
    }

}
