package com.springboot.record.dao;

import com.springboot.record.vo.VoMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface DaoMenu {

    // 1. 아래 1.1과 1.2는 같은 값을 얻는다.
    // 1.1 List<Map<String, String>>에 넣는다.
    public List<Map<String, String>> doDaoMenuList();

    // 1.2 vo.VoMember 넣는다.
    public List<VoMenu> doDaoMenuListVo();

    // 1개 레코드만.
    public VoMenu doDaoMenuOneVo(String strId);
    // 수정
    public int doDaoMenuUpdateVo(VoMenu voMenu);

    // 삭제
    public int doDaoMenuDelete(String strId);

    // 추가
    public int doDaoMenuInsertVo(VoMenu voMenu);

}
