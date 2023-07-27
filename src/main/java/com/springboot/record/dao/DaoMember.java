package com.springboot.record.dao;

import com.springboot.record.vo.VoMember;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface DaoMember {

    // 1. 아래 1.1과 1.2는 같은 값을 얻는다.
    // 1.1 List<Map<String, String>>에 넣는다.
    public List<Map<String, String>> doDaoMemberList();

    // 1.2 vo.VoMember 넣는다.
    public List<VoMember> doDaoMemberListVo();
    //public List<VoStudy> doDaoStudyListVo();

    // 1개 레코드만.
    public VoMember doDaoMemberOneVo(String strMemberId);
    // member 수정
    public int doDaoMemberUpdateVo(VoMember voMember);

    // member 삭제
    public int doDaoMemberDelete(String strMemberId);

    // member 추가
    public int doDaoMemberInsertVo(VoMember voMember);

}
