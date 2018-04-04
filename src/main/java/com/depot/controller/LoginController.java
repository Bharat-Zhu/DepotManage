package com.depot.controller;

import com.depot.models.Member;
import com.depot.models.User;
import com.depot.service.IMemberService;
import com.depot.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    public IMemberService memberService;

    @RequestMapping("/showHome")
    public String actionShowHome() {
        return "home.page";
    }

    @RequestMapping("/login")
    public String actionLogin() {
        return "login";
    }

    @RequestMapping("/loginCheck")
    public String actionLoginCheck(@RequestParam("login_account") String loginAccount, @RequestParam("login_pwd") String loginPwd, Map<String, Object> map) {
        Member member = memberService.getLoginByMemberAccount(loginAccount);
        map.put("member", member);
        System.out.println("Member: " + member);
        if (member != null) {
            if (loginAccount.equals(member.getMemberAccount()) && loginPwd.equals(member.getMemberPwd())) {
                return "redirect:showHome";
            }
        }
        return "login";
    }

    @RequestMapping("/logout")
    public String actionLogout() {
        return "login";
    }
}
