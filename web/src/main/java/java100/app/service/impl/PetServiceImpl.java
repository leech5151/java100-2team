package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.PetDao;
import java100.app.domain.Pet;
import java100.app.service.PetService;

@Service
public class PetServiceImpl implements PetService {

    @Autowired PetDao petDao;
    
    @Override
    public List<Pet> list(int pageNo, int pageSize, Map<String, Object> options) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        
        if (options != null) {
            params.putAll(options);
        }
        
        return petDao.findAll(params);
    }
    
    @Override
    public int getTotalCount() {
        return petDao.countAll();
    }
    
    @Override
    public int add(Pet pet) {
        int count = petDao.insert(pet);
        return count;
    }
    
    @Override
    public int delete(int no) {
        
        return petDao.delete(no);
    }
}












