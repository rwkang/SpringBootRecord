package com.springboot.record.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class Login {

    @GetMapping("/login")
    public String doLogin() {
        return "/login/login"; // Prefix, Suffix 세팅 후.
        // return "/WEB-INF/views/login/login.jsp"; // Prefix, Suffix 세팅 전.
    }

    @GetMapping("/signup")
    public String doSignup() {
        return "/login/signup"; // Prefix, Suffix 세팅 후.
        // return "/WEB-INF/views/login/signup.jsp"; // Prefix, Suffix 세팅 전.
    }

}
