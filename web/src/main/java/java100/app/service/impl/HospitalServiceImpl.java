package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.HospitalDao;
import java100.app.dao.HospitalFileDao;
import java100.app.domain.Hospital;
import java100.app.domain.HospitalUploadFile;
import java100.app.service.HospitalService;

@Service
public class HospitalServiceImpl implements HospitalService {

    @Autowired HospitalDao hospitalDao;
    @Autowired HospitalFileDao hospitalfileDao;
    
    
    @Override
    public List<Hospital> list(int pageNo, int pageSize, Map<String, Object> options) {
     
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return hospitalDao.findAll(params);
    }

    @Override
    public int getTotalCount() {
        return hospitalDao.countAll();
    }

    @Override
    public int add(Hospital hospital) {
        int count = hospitalDao.insert(hospital);
        
        this.addFiles(hospital.getFiles(), hospital.getHospitalNo());
        
        return count;
    }

    @Override
    public Hospital get(int no) {
        Hospital hospital = hospitalDao.findByNo(no);
        return hospital;
    }
    
    @Override
    public int update(Hospital hospital) {
        int count = hospitalDao.update(hospital);
        hospitalfileDao.deleteAllByHospitalNo(hospital.getHospitalNo());
        addFiles(hospital.getFiles(), hospital.getHospitalNo());
        
        return count;
    }
    
    @Override
    public int delete(int no) {
     hospitalfileDao.deleteAllByHospitalNo(no);
        return hospitalDao.delete(no);
    }
    
    @Override
    public void addFiles(List<HospitalUploadFile> files, int no) {
        for (HospitalUploadFile file : files) {
            file.setHospitalNo(no);
            hospitalfileDao.hospitalInsert(file);
        }
    }

    
}
