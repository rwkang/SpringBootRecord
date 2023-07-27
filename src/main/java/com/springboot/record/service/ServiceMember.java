package com.springboot.record.service;

import com.springboot.record.dao.DaoMember;
import com.springboot.record.vo.VoMember;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class ServiceMember {

    @Autowired
    DaoMember daoMember;


//    // 2023.07.08 Conclusion. sql_member.xml에서 받아 온 Data는, 반드시 "List<Map<String, ???>>" Collection 으로만 받아야 한다.
//    // 아래처럼 "List<String>" Collection 만으로는 못 받아 오네...
//    public List<String> doServiceListMember() {
//        List<String> serviceListMember = new ArrayList<>();
//        serviceListMember = daoMember.doDaoListMember();
//        return serviceListMember;
//    }

    public List<Map<String, String>> doServiceMember() {
        List<Map<String, String>> listServiceMember = new ArrayList<>();
        listServiceMember = daoMember.doDaoMemberList();
        return listServiceMember;
    }

    public List<VoMember> doServiceMemberListVo() {
        List<VoMember> listServiceMemberVo = new ArrayList<>();
        listServiceMemberVo = daoMember.doDaoMemberListVo();
        return listServiceMemberVo;
    }

    // 1개 로우 Select
    public VoMember doServiceMemberOneVo(String strMemberId) {
        VoMember oneMemberVo = new VoMember();
        oneMemberVo = daoMember.doDaoMemberOneVo(strMemberId);
        System.out.println("ServiceMember.java.doServiceMemberOneVo.strMemberId: " + strMemberId);

        return oneMemberVo;
    }

    // Member 수정
    public int doServiceMemberUpdateVo(VoMember voMember) {
        log.info("=================================================== ServiceMember.java.voMember: " + voMember);
        int intUpdated = daoMember.doDaoMemberUpdateVo(voMember);
        return intUpdated;
    }

    // Member 1개 로우 삭제
    // public int doServiceMemberDeleteVo(String strKeyId) { // 이런식으로 strKeyId 값으로 삭제 처리해도 되고,
    public int doServiceMemberDelete(String strMemberId) {
         int intDeleted = daoMember.doDaoMemberDelete(strMemberId);
         return intDeleted;
    }

    // Member 1개 로우 추가
    public int doServiceMemberInsertVo(VoMember voMember) {
        int intInserted = daoMember.doDaoMemberInsertVo(voMember);
        return intInserted;
    }


}
