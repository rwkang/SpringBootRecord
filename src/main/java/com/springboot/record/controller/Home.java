package com.springboot.record.controller;

import com.springboot.record.service.ServiceMember;
import com.springboot.record.service.ServiceMenu;
import com.springboot.record.service.ServiceStudy;
import com.springboot.record.vo.VoMember;
import com.springboot.record.vo.VoMenu;
import com.springboot.record.vo.VoStudy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/home")
@Slf4j  // 2023.07.11 Conclusion. @Slf4j: Rombok 적용, System.out.println() => log.info()
public class Home {

    @Autowired // 2023.07.13 Conclusion. 반드시 따로 따로 Annotation 호출해야 한다.
    ServiceStudy serviceStudy;

    @Autowired // 2023.07.13 Conclusion. 반드시 따로 따로 Annotation 호출해야 한다.
    ServiceMember serviceMember;

    @Autowired
    ServiceMenu serviceMenu;

    // 2023.07.03 Conclusion. @RequestMapping ???
    // Client가 WebBrowser를 통해서 "localhost:8088/home" 이와 같이 Request를 했을 때,
    // "localhost:8088" 여기는 WAS.Leasner.리스너가 받는 것이고,
    // "/home" 여기는 @RequestMapping가 받는 것이다.

    // 그러나,
    // 가능하면, @RequestMapping 대신에, 구체적으로 아래 것들 중에서 골라서 사용하도록 권장하고 있다.

    // @GetMapping
    // @PostMapping
    // @HeadMapping
    // @OptionsMapping
    // @PutMapping
    // @PatchMapping
    // @DeleteMapping
    // @TraceMapping

    //@RequestMapping("/") 대신에,
    @GetMapping("")
    public String doHome(){
        // 2023.07.03 Conclusion. 자 여기서 개념을 정확히 잡고 가야 한다.
        // 지금까지 localhost:8088/base/home.html을 실행히킬 때는, SpringBootRecode/src/webapp/ 아래에서,
        // base, css, html, jsp, images 이런식으로 폴더로 파일의 의미를 구분하여, 개발하였다.

        // 그런데, 본격적으로 Java.SpringBoot에서는, 반드시 MVC 개념으로 접근하기 위해,
        // 1. C:controller는 SpringBootRecode/src/main/java/com.springboot.recode/controller 폴더 안에, Home.java 파일을 만들어야 하고,
        // 2. V:view는 SpringBootRecode/src/main/webapp/WEB-INF/views 폴더 안에, home.jsp 파일을 만들어 사용해야 한다.
        //    여기서 한가지 기억해야 할 것은, 여기는 이미 Backend, 즉 이미 서버단이므로 .html 파일은 호출할 수 없고, .jsp 파일만을 호출해야 한다.
        //    콘솔 에러: "Path with "WEB-INF" or "META-INF": [WEB-INF/views/home.html.notuse]"
        //    ∵) Java.SpringBoot.Grade에서 Build를 하게 되면, .jar or .war 파일이 생성되어, 나중에 웹서버로 실행되는데,
        //    중요한 것은, 반드시 "webapp/WEB-INF" 여기 폴더로 반드시 정리되어야 하기 때문이다.

        // return "/WEB-INF/views/home.html.notuse"; // 여기는 실행 안 됨.

        return "/home/home"; // 정상 작동 됨. Prefix, Suffix 세팅 후.
        // return "/WEB-INF/views/home/home.jsp"; // 정상 작동 됨. Prefix, Suffix 세팅 전.

        // 2023.07.03 Conclusion. .html 파일을 .jsp 파일로 직접 변경할 수 있다. 다만, .jsp 파일 상단에 아래 1개 라인 추가 필수.
        // <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    }

    @GetMapping("/home2")
//    @GetMapping("/home/home2")
    public String doHome2(){
        // 2023.07.03 Conclusion. /WEB-INF/ 여기 폴더는, 웹사이트 정보에 대한 설정 값들을 가지고 있는 폴더이므로,
        // 외부에서는 클라이언트가 .html 파일로 볼 수 없도록 보호되어 있는 폴더이다.
        return "redirect:/WEB-INF/views/home.html"; // 여기는 실행 안 됨.
    }

    @GetMapping("/home3")
//    @GetMapping("/home/home3")
    public String doHome3(){
        return "redirect:/base/home.html"; // 정상 작동 됨.
    }

//    // 2023.07.08 Conclusion. sql_study.xml에서 받아 온 Data는, 반드시 "List<Map<String, ???>>" Collection 으로만 받아야 한다.
//    // 아래처럼 "List<String>" Collection 만으로는 못 받아 오네...
//    @GetMapping("/studied")
//    public List<String> doStudied() {
////    public List<Map<String, String>> doStudied2() {
////    public String dostudied2() {
//        List<String> serviceListStudy = new ArrayList<>();
//        serviceListStudy = serviceStudy.doServiceListStudy();
//
//        for (int i=0; i<serviceListStudy.size(); i++) {
//            System.out.println(serviceListStudy.get(i));
//        }
//
//        return serviceListStudy;
//        //return "/home/studied2"; // Prefix, Suffix 세팅 후.
//
//    }

    //@GetMapping("/studied")
    // @GetMapping("/home/studied")

    // public List<Map<String, String>> doStudied() {
    // => 2023.07.08 Conclusion. DB에서 받은 자료를 다시 Client.클라이언트에게 넘기는 방법.
    // 1. Client.를라이언트에서 Request.요청할 때, 이미 "HttpServletRequest request" param.인자를 받는다.
    //    여기 "request"에 "List.리스트"로 담아서, Views.jsp 파일로 넘겨, response.응답해 준다.
    //public List<Map<String, String>> doStudied(HttpServletRequest request) {

    // 2. Client.를라이언트에서 Request.요청할 때, 이미 "HttpServletRequest request" param.인자와 Model model을 받는다.
    //    여기서 "model"에 "List.리스트"로 담어서, Views.jsp 파일로 넘겨, reponse.응답해 준다.
    //public List<Map<String, String>> doStudied(HttpServletRequest request, Model model) {

    // 3. Client.를라이언트에서 Request.요청할 때, 이미 "HttpServletRequest request" param.인자와 Model model을 받는다.
    //
    @GetMapping("/study_list")
    public String doStudyList(HttpServletRequest request, Model model) { // 이렇게 하면, return "/home/studied"; 결과는 동일하다.
    //public List<VoStudy> doStudied(HttpServletRequest request, Model model) { // 이렇게 하면, return listStudyVo;
    // public String doStudied(){

        // 1. 2. 용법
        //List<Map<String, String>> listStudy = new ArrayList<>();
        //listStudy = serviceStudy.doServiceStudy();

        // 3. 용법
        List<VoStudy> listVoStudy = new ArrayList<>();
        listVoStudy = serviceStudy.doServiceStudyListVo();

        /*
        for (Map<String, String> map : listServiceStudy) {
            // 2023.07.07 Conclusion. Oracle.오라클 데이터는 "모두 대문자"로 핸들링 해 주어야 한다.
            System.out.println(map.get("KEY_ID"));
            System.out.println(map.get("STUDY_DAY"));
            System.out.println(map.get("CONTENTS"));
            System.out.println(map.get("REG_DAY"));
        }
        */

        for (VoStudy voStudy : listVoStudy) {
            /*
            // 2023.07.07 Conclusion. Oracle.오라클 데이터는 "모두 대문자"로 처리해야, .jsp 쪽에서 에러가 발생하지 않는다.
            System.out.println(voStudy.getKEY_ID());
            System.out.println(voStudy.getSTUDY_DAY());
            System.out.println(voStudy.getCONTENTS());
            System.out.println(voStudy.getREG_DAY());
            */

            /*
            // 2023.07.11 Conclusion. VO 객체를 사용할 때는 "소문자"를 사용해도 .jsp 쪽에서 에러가 발생하지 않는다.
            System.out.println(voStudy.getKey_id());
            System.out.println(voStudy.getStudy_day());
            System.out.println(voStudy.getContents());
            System.out.println(voStudy.getReg_day());
            */

            /*
            // 2023.07.11 Conclusion. MyBatis Camel Case 지원: ORACLE DB 테이블 컬럼명이 "_"(언더바)로 되어 있는 것을,-->
            // "자바 스타일.카멜 케이스" 형식으로 자동 변경해 준다. => sql.xml 파일 참조.-->
            System.out.println(voStudy.getKeyId());
            System.out.println(voStudy.getStudyDay());
            System.out.println(voStudy.getContents());
            System.out.println(voStudy.getRegDay());
            */

            // 2023.07.11 Conclusion. @Slf4j: Rombok 적용, System.out.println() => log.info()
            //log.info("voStudy.getKeyId(): " + voStudy.getKeyId());
            //log.info("voStudy.getStudyDay(): " + voStudy.getStudyDay());
            log.info("voStudy.getContents(): " + voStudy.getContents());
            //log.info("voStudy.getRegDay(): " + voStudy.getRegDay());
        }

        // 1. request 방식
        //request.setAttribute("listStudy", listStudy);
        // 2. model 방식
        //model.addAttribute("listStudy", listStudy);
        // 3. VO 방식: 위의 request 방식과  model 방식 모두 사용할 수 있다.
        //request.setAttribute("listVoStudy", listVoStudy);
        model.addAttribute("listVoStudy", listVoStudy);

        // 1. 2. 방식
        //return listServiceStudy;
        // 2023.07.08 Conclusion. IT 늦공 강의에서는, "return "/home/studied";" 이렇게 넘겨라 하는데, 그러면 에러가 나네.

        // 3 방식
        //return listStudyVo;
         return "/home/study_list"; // Prefix, Suffix 세팅 후.
        // return "/WEB-INF/views/home/study_list.jsp"; // Prefix, Suffix 세팅 전.
    }

//    @GetMapping("/study_list")
//    public String doStudyList(HttpServletRequest request, Model model) { // 이렇게 하면, return "/home/studied"; 결과는 동일하다.
//        // 3. 용법
//        List<VoStudy> listVoStudy = new ArrayList<>();
//        listVoStudy = serviceStudy.doServiceStudyListVo();
//    }

    @GetMapping("/member_list")
    // @GetMapping("/home/member_list")
    public String doMemberList(HttpServletRequest request, Model model) {

        log.info("=================================================================================================");
        log.info("request: " + request);

        List<VoMember> listVoMember = new ArrayList<>();
        listVoMember = serviceMember.doServiceMemberListVo();

        for (VoMember voMember : listVoMember) {
            log.info("voMember.getName(): " + voMember.getName());
        }

        request.setAttribute("listVoMember", listVoMember);
        //model.addAttribute("listVoMember", listVoMember);

        //return listVoMember;
        return "/home/member_list"; // Prefix, Suffix 세팅 후.
        // return "/WEB-INF/views/home/member_list.jsp"; // Prefix, Suffix 세팅 전.
    }

    @GetMapping("/menu_list")
    // @GetMapping("/home/member_list")
    public String doMenuList(HttpServletRequest request, Model model) {

        log.info("=================================================================================================");
        log.info("request: " + request);

        List<VoMenu> listVoMenu = new ArrayList<>();
        listVoMenu = serviceMenu.doServiceMenuListVo();

        for (VoMenu voMenu : listVoMenu) {
            log.info("voMenu.getId(): " + voMenu.getId());
            log.info("voMenu.getCode(): " + voMenu.getCode());
        }

        request.setAttribute("listVoMenu", listVoMenu);
        //model.addAttribute("listVoMember", listVoMember);

        //return listVoMember;
        return "/home/menu_list"; // Prefix, Suffix 세팅 후.
        // return "/WEB-INF/views/home/member_list.jsp"; // Prefix, Suffix 세팅 전.
    }

}
