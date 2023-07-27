package com.springboot.record.controller;


import com.springboot.record.service.ServiceStudy;
import com.springboot.record.vo.VoStudy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
//@RestController // 2023.07.12 Conclusion. 여기 @RestController를 실행하면, return "/study/study_~.jsp" 이쪽으로 가질 못하네.
@RequestMapping("/study")
@Slf4j
public class Study {

    @Autowired
    ServiceStudy serviceStudy;

    // 수정
    @GetMapping("/study_modify")
    public String doModify(HttpServletRequest request, Model model) { // 이렇게 하면, return "/study/study_modify"; 결과는 동일하다.
    //public VoStudy doModify(HttpServletRequest request, Model model) { // 이렇게 하면, return oneStudyVo;
        log.info("");
        log.info("request.toString(): " + request.toString());
        log.info("key_id: " + request.getParameter("key_id"));

        String strKeyId = request.getParameter("key_id");
        log.info(strKeyId);

        VoStudy voStudyOne = new VoStudy();
        voStudyOne = serviceStudy.doServiceStudyOneVo(strKeyId);

        //request.setAttribute("voStudyOne", voStudyOne);
        model.addAttribute("voStudyOne", voStudyOne);

        //return oneStudyModifyVo;
        return "/study/study_modify";
    }

    // 수정하기 버튼 클릭시
    @PostMapping("/study_modified")
    //public String doModified(HttpServletRequest requesxt) { // 고전적인 방식으로 [수정] 해야 할 3개 컬럼 값을 모두 받아서 넘겨, [업데이트] 처리할 수도 있지만.
    public String doStudyModified(@ModelAttribute VoStudy voStudy) { // Spring.스프링에서 방법은, [VO]로 한방에 처리하게 한다.

        int intUpdated = serviceStudy.doServiceStudyUpdateVo(voStudy);
        log.info("intUpdated: " + intUpdated);

        // 2023.07.12 Conclusion. /home.study_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doStudied() 메서드를 호출하는 것이다.
        return "redirect:/home/study_list";

    }

    // 삭제
    @GetMapping("/study_delete")
    public String doStudyDelete(@RequestParam(value = "key_id", defaultValue = "--") String strKeyId) { // defaultValue = "--": null 값은 절대 허용하지 않겠다.
    //public String doDelete(HttpServletRequest request, Model model) { // 이런식으로 strKeyId 값으로 삭제 처리해도 되고.
    //public String doDelete(VoStudy voStudy) { // VO 방식으로는 안 된다.

        log.info("");
        log.info("key_id: " + strKeyId);

        int intDeleted = serviceStudy.doServiceStudyDelete(strKeyId);

        // 2023.07.12 Conclusion. /home.study_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doStudied() 메서드를 호출하는 것이다.
        return "redirect:/home/study_list";
    }

    // 입력
    @GetMapping("/study_insert")
    public String doStudyInsert() {

        return "/study/study_insert";

    }

    // 추가하기 버튼 클릭시
    @PostMapping("/study_inserted")
    public String doStudyInserted(@ModelAttribute VoStudy voStudy) {

        int intInserted = serviceStudy.doServiceStudyInsertVo(voStudy);

        // 2023.07.12 Conclusion. /home/study_list.jsp 파일을 호출하는 것이 아니라, [redirect]는 Home.java.doStudyList() 메서드를 호출하는 것이다.
        return "redirect: /home/study_list";

    }


}
