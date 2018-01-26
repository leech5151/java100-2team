package java100.app.domain;

public class Diagnosis {
    
    protected int diagnosisNo;
    protected String diagnosisCategory;
    protected String diagnosisName;
    protected String diagnosisContents;
    protected double dogweight;
    protected String dateRecording;
    protected String recorder;
    protected String remarks;
    protected Member member;
    protected Hospital hospital;
    
    public int getDiagnosisNo() {
        return diagnosisNo;
    }
    public void setDiagnosisNo(int diagnosisNo) {
        this.diagnosisNo = diagnosisNo;
    }
    public String getDiagnosisCategory() {
        return diagnosisCategory;
    }
    public void setDiagnosisCategory(String diagnosisCategory) {
        this.diagnosisCategory = diagnosisCategory;
    }
    public String getDiagnosisName() {
        return diagnosisName;
    }
    public void setDiagnosisName(String diagnosisName) {
        this.diagnosisName = diagnosisName;
    }
    public String getDiagnosisContents() {
        return diagnosisContents;
    }
    public void setDiagnosisContents(String diagnosisContents) {
        this.diagnosisContents = diagnosisContents;
    }
    
    public double getDogweight() {
        return dogweight;
    }
    public void setDogweight(double dogweight) {
        this.dogweight = dogweight;
    }
    public String getDateRecording() {
        return dateRecording;
    }
    public void setDateRecording(String dateRecording) {
        this.dateRecording = dateRecording;
    }
    public String getRecorder() {
        return recorder;
    }
    public void setRecorder(String recorder) {
        this.recorder = recorder;
    }
    public String getRemarks() {
        return remarks;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public Member getMember() {
        return member;
    }
    public void setMember(Member member) {
        this.member = member;
    }
    public Hospital getHospital() {
        return hospital;
    }
    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }
    
    
}
