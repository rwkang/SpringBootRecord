package com.springboot.record.vo;

// 2023.07.08 Conclusion. 아래 방식 2. Lombok 사용 방식에서는, 아래 2개 annotation 만을 추가해 주면 된다.
// 그리고, 또한 아래 3개를 모두 한꺼번에 아울을 수 있는 annotation이, @Data 이다.
//@Getter
//@Setter
//@RequiredArgsConstructor

import lombok.Data;

@Data
public class VoStudy {
    /*
    // 2023.07.07 Conclusion. Oracle.오라클 데이터는 "모두 대문자"로 처리해야, .jsp 쪽에서 에러가 발생하지 않는다.
    private String KEY_ID;
    private String STUDY_DAY;
    private String CONTENTS;
    private String REG_DAY;
    */

    /*
    // 2023.07.11 Conclusion. VO를 사용하면, "소문자" 또는 "대문자"를 사용해도, .jsp 파일에서 에러가 발생하지 않는다.
    private String Key_id;
    private String study_day;
    private String contents;
    private String reg_day;
    */

    // 2023.07.11 Conclusion. MyBatis Camel Case 지원: ORACLE DB 테이블 컬럼명이 "_"(언더바)로 되어 있는 것을,-->
    // "자바 스타일.카멜 케이스" 형식으로 자동 변경해 준다. => sql.xml 파일 참조.-->
    private String keyId;
    private String studyDay;
    private String contents;
    private String regDay;

    // 방식 2. Lombok 사용 방식: Lombok 원 뜻은, java.자바가 원래 "인도네시아 섬 이름"인 것과 같이 "Lombok.롬복" 또한 인도네시아 자바 옆의 섬 이름이다.
    // start.spring.io/dependency 가져와서, build.grade 파일에 추가
    // compileOnly 'org.projectlombok:lombok'
    // annotationProcessor 'org.projectlombok:lombok'

//    // 방식 1. 일반적인 Getter, Setter 방식
//
//    public VoStudy(String KEY_ID, String STUDY_DAY, String CONTENTS, String REG_DAY) {
//        this.KEY_ID = KEY_ID;
//        this.STUDY_DAY = STUDY_DAY;
//        this.CONTENTS = CONTENTS;
//        this.REG_DAY = REG_DAY;
//    }
//
//    public String getKEY_ID() {
//        return KEY_ID;
//    }
//
//    public void setKEY_ID(String KEY_ID) {
//        this.KEY_ID = KEY_ID;
//    }
//
//    public String getSTUDY_DAY() {
//        return STUDY_DAY;
//    }
//
//    public void setSTUDY_DAY(String STUDY_DAY) {
//        this.STUDY_DAY = STUDY_DAY;
//    }
//
//    public String getCONTENTS() {
//        return CONTENTS;
//    }
//
//    public void setCONTENTS(String CONTENTS) {
//        this.CONTENTS = CONTENTS;
//    }
//
//    public String getREG_DAY() {
//        return REG_DAY;
//    }
//
//    public void setREG_DAY(String REG_DAY) {
//        this.REG_DAY = REG_DAY;
//    }
}
