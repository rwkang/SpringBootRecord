package com.springboot.record.controller;

import com.springboot.record.service.ServiceStudy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
//@RestController
//@RequestMapping("/")
public class First {

    @Autowired
    ServiceStudy serviceStudy;

    @GetMapping("/")
    public String doFirst() {
        return "/home/home"; // Prefix, Suffix 세팅 후.
//        return "/WEB-INF/views/home/home.jsp"; // Prefix, Suffix 세팅 전.
//        return "연결 성공";
    }

}
