package com.spring.crud.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String index(Model m) {
        m.addAttribute("message","Spring MVC project!");
        return "index";
    }
}
