package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Diagnosis;

public interface DiagnosisDao {
    List<Diagnosis> findAll(Map<String,Object> params);
    List<Diagnosis> findMyAll(String name,String selectDate,String nowDate);
    List<Diagnosis> findMyAllList(String name);
    int countAll();
    int CountMember(String tel);
    int insert(Diagnosis diagnosis);
    Diagnosis findByNo(int no);
    Diagnosis findByHospitalNo(int no);
    int update(Diagnosis diagnosis);
    int delete(int no,int no2);
    int deleteAll(int no);
}















