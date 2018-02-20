package java100.app.domain;

import java.util.List;
 
public class Pet_Stargram {
    protected int pet_stargramNo; //list
    protected String contents; //list
    protected String registrationDate;
    protected int likes;
    protected List<Pet_StargramUploadFile> files;
    protected Member member; //list
    public int getPet_stargramNo() {
        return pet_stargramNo;
    }
    public void setPet_stargramNo(int pet_stargramNo) {
        this.pet_stargramNo = pet_stargramNo;
    }
    public String getContents() {
        return contents;
    }
    public void setContents(String contents) {
        this.contents = contents;
    }
    public String getRegistrationDate() {
        return registrationDate;
    }
    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
    }
    public int getLikes() {
        return likes;
    }
    public void setLikes(int likes) {
        this.likes = likes;
    }
    public List<Pet_StargramUploadFile> getFiles() {
        return files;
    }
    public void setFiles(List<Pet_StargramUploadFile> files) {
        this.files = files;
    }
    public Member getMember() {
        return member;
    }
    public void setMember(Member member) {
        this.member = member;
    }
    
    
}










