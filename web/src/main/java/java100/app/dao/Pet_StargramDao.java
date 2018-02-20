package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.Pet_Stargram;

public interface Pet_StargramDao {
    List<Pet_Stargram> findAll(Map<String,Object> params);
    int countAll();
    int insert(Pet_Stargram pet_stargram);
    Pet_Stargram findByNo(int no);
   /* Pet_Stargram findByEmailAndPassword(HashMap<String, Object> params);*/
    int update(Pet_Stargram pet_stargram);
    int delete(int no);
    /*int updateViewCount(int no);*/
    int updateLikes(int no);
}












 


