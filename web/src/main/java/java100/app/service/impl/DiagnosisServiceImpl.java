package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.DiagnosisDao;
import java100.app.dao.HospitalDao;
import java100.app.domain.Diagnosis;
import java100.app.service.DiagnosisService;

@Service
public class DiagnosisServiceImpl implements DiagnosisService {

    @Autowired DiagnosisDao diagnosisDao;
    @Autowired HospitalDao hospitalDao;
    
    
    @Override
    public List<Diagnosis> list(int pageNo, int pageSize, Map<String, Object> options) {
     
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return diagnosisDao.findAll(params);
    }

    @Override
    public int getTotalCount() {
        return diagnosisDao.countAll();
    }

    @Override
    public int add(Diagnosis diagnosis) {
        int count = diagnosisDao.insert(diagnosis);
        System.out.println(count);
        return count;
    }

    @Override
    public int get(String tel) {
        int j = diagnosisDao.CountMember(tel);
        System.out.println("j=" + j);
        return j;
    }

    @Override
    public Diagnosis get(int no) {
        Diagnosis diagnosis = diagnosisDao.findByNo(no);
        return diagnosis;
    }
    
    @Override
    public int update(Diagnosis diagnosis,int no) {
        int count = 0;
        
            Diagnosis diagnosis2 = diagnosisDao.findByHospitalNo(no);
            diagnosis.setHospital(diagnosis2.getHospital());
            count = diagnosisDao.update(diagnosis);
            System.out.println("count=" + count);
            return count;
    }
      
    
    
    @Override
    public int delete(int no,int no2) {
        int k = 0;
        
        try {
            k = diagnosisDao.findByHospitalNo(no2).getHospital().getHospitalNo();    
        } catch (Exception e) {
            return 2;
        }
        

        int i = diagnosisDao.countAll();
        System.out.print("i=");
        System.out.println(i);
        diagnosisDao.delete(no,k);
        int j = diagnosisDao.countAll();
        System.out.print("j=");
        System.out.println(j);
        
        if(i==j) {
            return 0;
        }else {
            return 1;
        }
        
    }

    @Override
    public Object getHospitalNo(int no) {
        return diagnosisDao.findByHospitalNo(no);
    }

    @Override
    public int deleteAll(int no) {
        return diagnosisDao.deleteAll(no);
    }
    
    
    
}
