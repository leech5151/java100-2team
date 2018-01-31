package java100.app.dao;

import java.util.List;

import java100.app.domain.PetEncyclopediaUploadFile;

public interface PetEncyclopediaFileDao {

    List<PetEncyclopediaUploadFile> findByMemberNo(int no);
    
    void insert(PetEncyclopediaUploadFile file);

    void deleteAllByPetEncyclopediaNo(int no);
}
