package com.depot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/showHome")
    public String loginCheck() {
        return "home.page";
    }
}
