package java100.app.service;

import java.util.List;

import java100.app.domain.Pet;

public interface PetService {
    
    List<Pet> list(int searchNo);
    int getTotalCount();
    int add(Pet pet);
    int delete(int no);
}





