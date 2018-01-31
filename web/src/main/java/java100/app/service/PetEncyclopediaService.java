package java100.app.service;

import java.util.List;
import java.util.Map;

import java100.app.domain.PetEncyclopedia;
import java100.app.domain.PetEncyclopediaUploadFile;

public interface PetEncyclopediaService {
	List<PetEncyclopedia> list(int pageNo, int pageSize,
			Map<String, Object> options);
	int getTotalCount();
	int add(PetEncyclopedia petEncyclopedia);
	void addFiles(List<PetEncyclopediaUploadFile> files, int petEncyclopediaNo);
	PetEncyclopedia get(int no);
	int update(PetEncyclopedia petEncyclopedia);
	int delete(int no);
	PetEncyclopedia updateLikes(int no);
}
