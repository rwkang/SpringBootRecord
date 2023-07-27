package com.springboot.record.service;

import com.springboot.record.dao.DaoStudy;
import com.springboot.record.vo.VoStudy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class ServiceStudy {

    @Autowired
    DaoStudy daoStudy;


//    // 2023.07.08 Conclusion. sql_study.xml에서 받아 온 Data는, 반드시 "List<Map<String, ???>>" Collection 으로만 받아야 한다.
//    // 아래처럼 "List<String>" Collection 만으로는 못 받아 오네...
//    public List<String> doServiceListStudy() {
//        List<String> serviceListStudy = new ArrayList<>();
//        serviceListStudy = daoStudy.doDaoListStudy();
//        return serviceListStudy;
//    }

    public List<Map<String, String>> doServiceStudy() {
        List<Map<String, String>> listServiceStudy = new ArrayList<>();
        listServiceStudy = daoStudy.doDaoStudyList();
        return listServiceStudy;
    }

    public List<VoStudy> doServiceStudyListVo() {
        List<VoStudy> listServiceStudyVo = new ArrayList<>();
        listServiceStudyVo = daoStudy.doDaoStudyListVo();
        return listServiceStudyVo;
    }

    // 1개 로우 Select
    public VoStudy doServiceStudyOneVo(String strKeyId) {
        VoStudy voStudyOne = new VoStudy();
        voStudyOne = daoStudy.doDaoStudyOneVo(strKeyId);
        System.out.println("========================> ServiceStudy.java.doServiceStudyOneVo.strKeyId: " + strKeyId);

        return voStudyOne;
    }

    // study_record 수정
    public int doServiceStudyUpdateVo(VoStudy voStudy) {
        log.info("voStudy: " + voStudy);
        int intUpdated = daoStudy.doDaoStudyUpdateVo(voStudy);
        return intUpdated;
    }

    // study_recode 1개 로우 삭제
    // public int doServiceStudyDeleteVo(String strKeyId) { // 이런식으로 strKeyId 값으로 삭제 처리해도 되고,
    public int doServiceStudyDelete(String strKeyId) {
         int intDeleted = daoStudy.doDaoStudyDelete(strKeyId);
         return intDeleted;
    }

    // study_record 1개 로우 추가
    public int doServiceStudyInsertVo(VoStudy voStudy) {
        int intInserted = daoStudy.doDaoStudyInsertVo(voStudy);
        return intInserted;
    }


}
