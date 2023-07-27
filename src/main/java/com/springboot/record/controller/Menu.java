package com.springboot.record.controller;

import com.springboot.record.service.ServiceMenu;
import com.springboot.record.vo.VoMenu;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/base")
@Slf4j
public class Menu {

    @Autowired
    ServiceMenu serviceMenu;

    // 수정
    @GetMapping("/menu_modify")
    // 1 방법
    public VoMenu doModify(HttpServletRequest request, Model model) {
    // 2 방법
    //public String doModify(HttpServletRequest request, Model model) {

        String strId = request.getParameter("id");
        log.info("strId: " + strId);

        VoMenu voMenuOne = new VoMenu();
        voMenuOne = serviceMenu.doServiceMenuOneVo(strId);

        //request.setAttribute("voMemberOne", voMemberOne);
        model.addAttribute("voMenuOne", voMenuOne);

        // 1 방법
        return voMenuOne;
        // 2 방법
        //return "/menu/menu_modify";

    }

    // 수정 됨: 수정하기 버튼 클리 시
    @PostMapping("/menu_modified")
    //public String doMemberModified(HttpServletRequest request, Model model) {
    public String doMenuModified(@ModelAttribute VoMenu voMenu) {

        log.info("menu_modified =============================================================" + voMenu.getId());
        log.info("menu_modified =============================================================" + voMenu.getCode());
        log.info("menu_modified =============================================================" + voMenu.getMenu1());
        log.info("menu_modified =============================================================" + voMenu.getMenu2());
        log.info("menu_modified =============================================================" + voMenu.getMenu3());
        log.info("menu_modified =============================================================" + voMenu.getMenu4());
        log.info("menu_modified =============================================================" + voMenu.getLanguage1());
        log.info("menu_modified =============================================================" + voMenu.getLanguage3());
        log.info("menu_modified =============================================================" + voMenu.getLanguage4());
        log.info("menu_modified =============================================================" + voMenu.getModifiedUserId());
        log.info("menu_modified =============================================================" + voMenu.getRegUserId());

        int intUpdated = serviceMenu.doServiceMenuUpdateVo(voMenu);
        log.info("intUpdated: " + intUpdated);

        // 2023.07.12 Conclusion. /member/member_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doMemberList() 메서드를 호출하는 것이다.
        return "redirect:/home/menu_list";

    }

    // 삭제
    @GetMapping("/menu_delete")
    public String doMenuDelete(@RequestParam(value="id", defaultValue = "--") String strId) {

        log.info("====================================================================================");
        log.info("strId: " + strId);

        int intMenuDeleted = serviceMenu.doServiceMenuDelete(strId);

        // 2023.07.12 Conclusion. /home.study_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doStudied() 메서드를 호출하는 것이다.
        return "redirect:/home/menu_list";

    }

    // 추가
    @GetMapping("/menu_insert")
    public String doMenuInsert() {

        return "/base/menu_insert";

    }

    // 회원 가입: 위의 /member_insert 내용과 동일한데, 화면만 다름.
    @GetMapping("/member_signup")
    public String doMemberSignup() {

        return "/member/member_signup";

    }

    // 추가 됨
    @PostMapping("/menu_inserted")
    public String doMenuInserted(@ModelAttribute VoMenu voMenu) {

        log.info("===========================================> voMenu: " + voMenu.getCode());
        log.info("===========================================> voMenu: " + voMenu.getMenu1());
        log.info("===========================================> voMenu: " + voMenu.getMenu2());
        log.info("===========================================> voMenu: " + voMenu.getMenu3());
        log.info("===========================================> voMenu: " + voMenu.getMenu4());
        log.info("===========================================> voMenu: " + voMenu.getLanguage1());
        log.info("===========================================> voMenu: " + voMenu.getLanguage2());
        log.info("===========================================> voMenu: " + voMenu.getLanguage3());
        log.info("===========================================> voMenu: " + voMenu.getLanguage4());
        log.info("===========================================> voMenu: " + voMenu.getUserId());
        log.info("===========================================> voMenu: " + voMenu.getWinType());
        log.info("===========================================> voMenu: " + voMenu.getWinName());
        log.info("===========================================> voMenu: " + voMenu.getWinParam());
        log.info("===========================================> voMenu: " + voMenu.getIsAccess());
        log.info("===========================================> voMenu: " + voMenu.getAuthorityId());
        log.info("===========================================> voMenu: " + voMenu.getModifiedUserId());
        log.info("===========================================> voMenu: " + voMenu.getRegUserId());
        int intMenuInserted = serviceMenu.doServiceMenuInsertVo(voMenu);
        log.info("===========================================> intMenuInserted: " + intMenuInserted);

        // 2023.07.12 Conclusion. /home/member_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doMemberList() 메서드를 호출하는 것이다.
        return "redirect:/home/menu_list";

    }

    // 로그인 창 열기
    @GetMapping("/member_login")
    public String doMemberLogin() {

        return "/member/member_login";

    }


}
