package java100.app.dao;

import java.util.List;
import java.util.Map;

import java100.app.domain.PetEncyclopedia;

public interface PetEncyclopediaDao {
	List<PetEncyclopedia> findAll(Map<String, Object> params);
	int countAll();
	int insert(PetEncyclopedia petEncyclopedia);
	PetEncyclopedia findByNo(int no);
	int update(PetEncyclopedia petEncyclopedia);
	int delete(int no);
	int updateViewCount(int no);
	int updateLikes(int no);
}
