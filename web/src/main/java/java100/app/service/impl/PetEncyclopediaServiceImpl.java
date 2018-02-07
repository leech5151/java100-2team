package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.PetEncyclopediaDao;
import java100.app.dao.PetEncyclopediaFileDao;
import java100.app.domain.PetEncyclopedia;
import java100.app.domain.PetEncyclopediaUploadFile;
import java100.app.service.PetEncyclopediaService;

@Service
public class PetEncyclopediaServiceImpl implements PetEncyclopediaService {

	@Autowired
	PetEncyclopediaDao petEncyclopediaDao;
	@Autowired
	PetEncyclopediaFileDao petEncyclopediaFileDao;

	@Override
	public List<PetEncyclopedia> list(int pageNo, int pageSize,
			Map<String, Object> options) {

		HashMap<String, Object> params = new HashMap<>();
		params.put("startIndex", (pageNo - 1) * pageSize);
		params.put("size", pageSize);

		if (options != null) {
			params.putAll(options);
		}
		return petEncyclopediaDao.findAll(params);
	}

	@Override
	public int getTotalCount() {
		return petEncyclopediaDao.countAll();
	}

	@Override
	public int add(PetEncyclopedia petEncyclopedia) {
		int count = petEncyclopediaDao.insert(petEncyclopedia);
		this.addFiles(petEncyclopedia.getFiles(),
				petEncyclopedia.getPetEncyclopediaNo());
		return count;
	}

	@Override
	public PetEncyclopedia get(int no) {
		PetEncyclopedia petEncyclopedia = petEncyclopediaDao.findByNo(no);

		petEncyclopediaDao.updateViewCount(no);

		return petEncyclopedia;
	}
	//
	@Override
	public PetEncyclopedia updateLikes(int no) {
		PetEncyclopedia petEncyclopedia = petEncyclopediaDao.findByNo(no);
		petEncyclopediaDao.updateLikes(no);
		return petEncyclopedia;
	}
	//
	@Override
	public int update(PetEncyclopedia petEncyclopedia) {
		int count = petEncyclopediaDao.update(petEncyclopedia);

		petEncyclopediaFileDao.deleteAllByPetEncyclopediaNo(
				petEncyclopedia.getPetEncyclopediaNo());

		addFiles(petEncyclopedia.getFiles(),
				petEncyclopedia.getPetEncyclopediaNo());
		
		return count;
	}

	@Override
	public int delete(int no) {
		petEncyclopediaFileDao.deleteAllByPetEncyclopediaNo(no);
		return petEncyclopediaDao.delete(no);
	}

	@Override
	public void addFiles(List<PetEncyclopediaUploadFile> files, int no) {
		for (PetEncyclopediaUploadFile file : files) {
			file.setPetEncyclopediaNo(no);
			petEncyclopediaFileDao.insert(file);
		}
	}

}
