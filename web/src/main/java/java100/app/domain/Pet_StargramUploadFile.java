package java100.app.domain;

public class Pet_StargramUploadFile {
    int no;
    String filename;
    int pet_stargramNo;
    
    public Pet_StargramUploadFile() {}
    
    public Pet_StargramUploadFile(String filename) {
        this(0, filename);
    }

    public Pet_StargramUploadFile(int no, String filename) {
        this.no = no;
        this.filename = filename;
    } 

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }
 
    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public int getPet_stargramNo() {
        return pet_stargramNo;
    }

    public void setPet_stargramNo(int pet_stargramNo) {
        this.pet_stargramNo = pet_stargramNo;
    }

    
    
    
    
}
