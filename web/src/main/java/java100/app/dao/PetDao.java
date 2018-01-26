package java100.app.dao;

import java.util.List;

import java100.app.domain.Pet;

public interface PetDao {
    
    List<Pet> findAll(int searchNo);
    int countAll();
    int insert(Pet pet);
    int delete(int no);
}















