package java100.app.service;

import java.util.List;
import java.util.Map;

import java100.app.domain.Pet;

public interface PetService {
    List<Pet> list(int pageNo, int pageSize, Map<String,Object> options);
    int getTotalCount();
    /*
    int add(Member score);
    void addFiles(List<UploadFile> files, int memberNo);
    Member get(int no);
    Member get(String email, String password);
    int update(Member member);
    int delete(int no);
    */
}





