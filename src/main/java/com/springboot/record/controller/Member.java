package com.springboot.record.controller;

import com.springboot.record.service.ServiceMember;
import com.springboot.record.vo.VoMember;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/member")
@Slf4j
public class Member {

    @Autowired
    ServiceMember serviceMember;

    // 수정
    @GetMapping("/member_modify")
    // 1 방법
    public VoMember doModify(HttpServletRequest request, Model model) {
    // 2 방법
    //public String doModify(HttpServletRequest request, Model model) {

        String strMemberId = request.getParameter("member_id");
        log.info("strMemberId: " + strMemberId);

        VoMember voMemberOne = new VoMember();
        voMemberOne = serviceMember.doServiceMemberOneVo(strMemberId);

        //request.setAttribute("voMemberOne", voMemberOne);
        model.addAttribute("voMemberOne", voMemberOne);

        // 1 방법
        return voMemberOne;
        // 2 방법
        //return "/member/member_modify";

    }

    // 수정 됨: 수정하기 버튼 클리 시
    @PostMapping("/member_modified")
    //public String doMemberModified(HttpServletRequest request, Model model) {
    public String doMemberModified(@ModelAttribute VoMember voMember) {

        int intUpdated = serviceMember.doServiceMemberUpdateVo(voMember);
        log.info("intUpdated: " + intUpdated);

        // 2023.07.12 Conclusion. /member/member_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doMemberList() 메서드를 호출하는 것이다.
        return "redirect:/home/member_list";

    }

    // 삭제
    @GetMapping("/member_delete")
    public String doMemberDelete(@RequestParam(value="member_id", defaultValue = "--") String strMemberId) {

        log.info("====================================================================================");
        log.info("strMemberId: " + strMemberId);

        int intMemberDeleted = serviceMember.doServiceMemberDelete(strMemberId);

        // 2023.07.12 Conclusion. /home.study_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doStudied() 메서드를 호출하는 것이다.
        return "redirect:/home/member_list";

    }

    // 추가
    @GetMapping("/member_insert")
    public String doMemberInsert() {

        return "/member/member_insert";

    }

    // 회원 가입: 위의 /member_insert 내용과 동일한데, 화면만 다름.
    @GetMapping("/member_signup")
    public String doMemberSignup() {

        return "/member/member_signup";

    }

    // 추가 됨
    @PostMapping("/member_inserted")
    public String doMemberInserted(@ModelAttribute VoMember voMember) {

        int intMemberInserted = serviceMember.doServiceMemberInsertVo(voMember);
        log.info("===========================================> intMemberInserted: " + intMemberInserted);

        // 2023.07.12 Conclusion. /home/member_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doMemberList() 메서드를 호출하는 것이다.
        return "redirect:/home/member_list";

    }

    // 로그인 창 열기
    @GetMapping("/member_login")
    public String doMemberLogin() {

        return "/member/member_login";

    }


}
