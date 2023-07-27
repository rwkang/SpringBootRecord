package com.springboot.record.service;

import com.springboot.record.dao.DaoMenu;
import com.springboot.record.vo.VoMenu;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class ServiceMenu {

    @Autowired
    DaoMenu daoMenu;

    public List<Map<String, String>> doServiceMenu() {
        List<Map<String, String>> listServiceMenu = new ArrayList<>();
        listServiceMenu = daoMenu.doDaoMenuList();
        return listServiceMenu;
    }

    public List<VoMenu> doServiceMenuListVo() {
        List<VoMenu> listServiceMenuVo = new ArrayList<>();
        listServiceMenuVo = daoMenu.doDaoMenuListVo();
        return listServiceMenuVo;
    }

    // 1개 로우 Select
    public VoMenu doServiceMenuOneVo(String strId) {
        VoMenu oneMenuVo = new VoMenu();
        oneMenuVo = daoMenu.doDaoMenuOneVo(strId);
        System.out.println("ServiceMenu.java.doServiceMenuOneVo.strId: " + strId);

        return oneMenuVo;
    }

    // Member 수정
    public int doServiceMenuUpdateVo(VoMenu voMenu) {
        log.info("=================================================== ServiceMenu.java.voMenu: " + voMenu);
        int intUpdated = daoMenu.doDaoMenuUpdateVo(voMenu);
        return intUpdated;
    }

    // Member 1개 로우 삭제
    // public int doServiceMemberDeleteVo(String strKeyId) { // 이런식으로 strKeyId 값으로 삭제 처리해도 되고,
    public int doServiceMenuDelete(String strId) {

         int intDeleted = daoMenu.doDaoMenuDelete(strId);
         return intDeleted;

    }

    // Member 1개 로우 추가
    public int doServiceMenuInsertVo(VoMenu voMenu) {
        int intInserted = daoMenu.doDaoMenuInsertVo(voMenu);
        return intInserted;
    }

}
