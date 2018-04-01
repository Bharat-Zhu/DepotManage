package com.depot.controller;

import com.depot.models.User;
import com.depot.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/showHome")
    public String actionShowHome() {
        return "home.page";
    }

    @RequestMapping("/login")
    public String actionLogin() {
        return "login";
    }

    @RequestMapping("/loginCheck")
    public void actionLoginCheck(@RequestParam("userNumber") String userNumber) {
        User user = userService.getUserByNumber(userNumber);
        System.out.println("User: " + user);
    }
}
