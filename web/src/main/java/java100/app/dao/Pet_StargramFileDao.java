package java100.app.dao;

import java.util.List;

import java100.app.domain.Pet_StargramUploadFile;

public interface Pet_StargramFileDao {

    List<Pet_StargramUploadFile> findByPet_StargramNo(int no);
    
    void insert(Pet_StargramUploadFile file);

    void deleteAllByPet_StargramNo(int no);
}
 