package java100.app.domain;

public class BusinessReview {
     int reviewNo;
     String title;
     String content;
     String createDate;
     double StarPoint;
     int viewCount;
     int businessNo;
     protected Member registrant;
   
     public Member getRegistrant() {
        return registrant;
    }
    public void setRegistrant(Member registrant) {
        this.registrant = registrant;
    }
    public void setStarPoint(double starPoint) {
        StarPoint = starPoint;
    }
    public int getReviewNo() {
        return reviewNo;
    }
    public void setReviewNo(int reviewNo) {
        this.reviewNo = reviewNo;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getCreateDate() {
        return createDate;
    }
    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
    public Double getStarPoint() {
        return StarPoint;
    }
    public void setStarPoint(Double starPoint) {
        StarPoint = starPoint;
    }
    public int getViewCount() {
        return viewCount;
    }
    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }
    public int getBusinessNo() {
        return businessNo;
    }
    public void setBusinessNo(int businessNo) {
        this.businessNo = businessNo;
    }
    
  
    
}
