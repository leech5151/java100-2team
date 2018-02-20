package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.Pet_StargramDao;
import java100.app.dao.Pet_StargramFileDao;
import java100.app.domain.Pet_Stargram;
import java100.app.domain.Pet_StargramUploadFile;
import java100.app.service.Pet_StargramService;

@Service
public class Pet_StargramServiceImpl implements Pet_StargramService {

    @Autowired Pet_StargramDao pet_stargramDao;
    @Autowired Pet_StargramFileDao pet_stargramFileDao;
    
    @Override
    public List<Pet_Stargram> list(int pageNo, int pageSize, Map<String, Object> options) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return pet_stargramDao.findAll(params);
    }
     
    @Override
    public int getTotalCount() {
        return pet_stargramDao.countAll();
    }

    @Override
    public int add(Pet_Stargram pet_stargram) {
        
        int count = pet_stargramDao.insert(pet_stargram);
        
        this.addFiles(pet_stargram.getFiles(), pet_stargram.getPet_stargramNo());
        
        return count;
    }
    
    @Override
    public Pet_Stargram get(int no) {
        /*pet_stargramDao.updateViewCount(no);
        pet_stargramDao.updateLikes(no); // 
*/       
        
        Pet_Stargram pet_stargram = pet_stargramDao.findByNo(no);
        
        return pet_stargram;
    }

    
   /* @Override
    public Trainning get(String email, String password) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("password", password);
        
        return trainningDao.findByEmailAndPassword(params);
    }*/
    
    @Override
    public int update(Pet_Stargram pet_stargram) {
        
        int count = pet_stargramDao.update(pet_stargram);
       
        if(!pet_stargram.getFiles().isEmpty()) {
            pet_stargramFileDao.deleteAllByPet_StargramNo(pet_stargram.getPet_stargramNo());
        }
        
        addFiles(pet_stargram.getFiles(), pet_stargram.getPet_stargramNo());
        
        return count;
    }
    @Override
    public int delete(int no) {
        
        pet_stargramFileDao.deleteAllByPet_StargramNo(no);
        
        return pet_stargramDao.delete(no);
    }

    
    @Override
    public void addFiles(List<Pet_StargramUploadFile> files, int no) {
        for (Pet_StargramUploadFile file : files) {
            file.setPet_stargramNo(no);
            pet_stargramFileDao.insert(file);
        }
    }

   

    
}












