package java100.app.service;

import java.util.List;
import java.util.Map;

import java100.app.domain.Lost;
import java100.app.domain.LostUploadFile;

public interface LostService {
    List<Lost> list(Map<String,Object> options);
    int getTotalCount();
    int add(Lost lost);
    void addFiles(List<LostUploadFile> files, int lostNo);
    Lost get(int no);
    int update(Lost lost);
    int delete(int no);
}





