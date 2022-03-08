package com.example.demo.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/generator")
public class SaladGeneratorController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getGeneratorForm(ModelAndView modelAndView) {

        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public void submitForm(String[] allowedCategories, String[] excludedCategories) {

    }
}
