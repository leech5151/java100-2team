package java100.app.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java100.app.dao.BusinessReviewDao;
import java100.app.domain.BusinessReview;
import java100.app.domain.BusinessUploadFile;
import java100.app.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService {

    @Autowired BusinessReviewDao businessReviewDao;

    @Override // 리뷰 list
    public List<BusinessReview> list(int pageNo, int pageSize, Map<String, Object> options) {
        HashMap<String,Object> params = new HashMap<>();
        params.put("startIndex", (pageNo - 1) * pageSize);
        params.put("size", pageSize);
        if (options != null) {  
        }
        return businessReviewDao.findAll(params);
    }
    
    @Override
    public int getTotalCount() {
        return businessReviewDao.countAll();
    }

    @Override
    public int add(BusinessReview businessReview) {
        
        int count = businessReviewDao.insert(businessReview);
        
        /*this.addFiles(businessReview.getFiles(), businessReview.getBusinessNo());*/
        
        return count;
    }
    
  
    @Override
    public BusinessReview get(int rv_no) {
        BusinessReview businessReview = businessReviewDao.findByNo(rv_no);
        
        return businessReview;
    }

    
    @Override
    public BusinessReview get(String email, String password) {
        
        HashMap<String,Object> params = new HashMap<>();
        params.put("email", email);
        params.put("password", password);
        
        return businessReviewDao.findByEmailAndPassword(params);
    }
    
    @Override
    public int update(BusinessReview businessReview) {
        
        int count = businessReviewDao.update(businessReview);
        
       /* if(!business.getFiles().isEmpty()) {
            businessFileDao.deleteAllByBusinessNo(business.getBusinessNo());
        }
        
        // 다시 게시물 첨부파일을 저장한다.
        addFiles(business.getFiles(), business.getBusinessNo());*/
        
        return count;
    }
    @Override
    public int delete(int rv_no) {
        
        /*businessFileDao.deleteAllByBusinessNo(bus_no);*/
        
        return businessReviewDao.delete(rv_no);
    }

    @Override
    public void addFiles(List<BusinessUploadFile> files, int ReviewNo) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public Object getBusinessNo(int no) {
        return businessReviewDao.findByBusinessNo(no);
    }

    
/*    @Override
    public void addFiles(List<BusinessUploadFile> files, int businessNo) {
        for (BusinessUploadFile file : files) {
            file.setBusinessNo(businessNo);
            businessFileDao.insert(file);
        }
    }*/
    

   
}












