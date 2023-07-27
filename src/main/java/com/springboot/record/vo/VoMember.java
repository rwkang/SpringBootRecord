package com.springboot.record.vo;

import lombok.Data;

@Data
public class VoMember {
    private String memberId;
    private String loginId;
    private String password;
    private String name;
    private String role;
    private String regDay;

//    // 20230.07.13 Conclusion. lombok 기능으로, .jsp를 JAP, thymeleaf로 컨버전할 때 활용.
//    @Builder
//    public VoMember(String loginId, String password, String name, String role, String regDay) {
//        this.loginId = loginId;
//        this.password = password;
//        this.name = name;
//        this.role = role;
//        this.regDay = regDay;
//    }

}
