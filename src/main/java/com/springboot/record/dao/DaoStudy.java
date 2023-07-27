package com.springboot.record.dao;

import com.springboot.record.vo.VoStudy;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface  DaoStudy {

//    // 2023.07.08 Conclusion. sql_study.xml에서 받아 온 Data는, 반드시 "List<Map<String, ???>>" Collection 으로만 받아야 한다.
//    // 아래처럼 "List<String>" Collection 만으로는 못 받아 오네...
//    public List<String> doDaoListStudy();

    // 1. 아래 1.1과 1.2는 같은 값을 얻는다.
    // 1.1 List<Map<String, String>>에 넣는다.
    public List<Map<String, String>> doDaoStudyList();

    // 1.2 vo.VoStudy에 넣는다.
    public List<VoStudy> doDaoStudyListVo();

    // 1개 레코드만.
    public VoStudy doDaoStudyOneVo(String strKeyId);

    // study_record 수정
    public int doDaoStudyUpdateVo(VoStudy voStudy);

    // study_record 삭제
    public int doDaoStudyDelete(String strKeyId);

    // study_record 추가
    public int doDaoStudyInsertVo(VoStudy voStudy);

}
