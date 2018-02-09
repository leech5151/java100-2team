package java100.app.dao;

import java.util.List;

import java100.app.domain.BusinessReviewUploadFile;

public interface BusinessReviewFileDao {

    List<BusinessReviewUploadFile> findByBusinessNo(int bus_no);
    
    void insert(BusinessReviewUploadFile file);
    void deleteAllByBusinessNo(int bus_no);
}
