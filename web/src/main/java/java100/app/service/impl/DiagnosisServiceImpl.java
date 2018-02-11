package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.DiagnosisDao;
import java100.app.domain.Diagnosis;
import java100.app.service.DiagnosisService;

@Service
public class DiagnosisServiceImpl implements DiagnosisService {

    @Autowired DiagnosisDao diagnosisDao;
    
    
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
        return count;
    }

    @Override
    public Diagnosis get(int no) {
        Diagnosis diagnosis = diagnosisDao.findByNo(no);
        return diagnosis;
    }
    
    @Override
    public int update(Diagnosis diagnosis) {
        int count = diagnosisDao.update(diagnosis);
        
        return count;
    }
    
    @Override
    public int delete(int no) {
        return  diagnosisDao.delete(no);
    }

    
    
    
    @Override
    public Diagnosis getHospitalNo(int no) {
        return diagnosisDao.findByHospitalNo(no);
    }
    
    
    
    
    
}
