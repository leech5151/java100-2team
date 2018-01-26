<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>진료자료입력</h1>

<form action="add" method='post' enctype="multipart/form-data">

<!--  <div class='form-group row'>
 
        <label for='member.memberNo' class='col-sm-2 col-form-label'>회원번호</label>
        <div class='col-sm-10'>
        <input class='form-control' id='member.memberNo' type='number' 
                name='member.memberNo'>
        </div>
        </div> -->
        
        <div class='form-group row'>
        <label for='hospital.hospitalNo' class='col-sm-2 col-form-label'>병원번호</label>
        <div class='col-sm-10'>
        <input class='form-control' id='hospital.hospitalNo' type='number' 
                name='hospital.hospitalNo'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='dogweight' class='col-sm-2 col-form-label'>강아지무게</label>
        <div class='col-sm-10'>
        <input class='form-control' id='dogweight' type='number' 
                name='dogweight'>
        </div>
        </div>
        
        
        <div class='form-group row'>
        <label for='diagnosisCategory' class='col-sm-2 col-form-label'>분류</label>
        <div class='col-sm-10'>
        <input class='form-control' id='diagnosisCategory' type='text' 
                name='diagnosisCategory'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='diagnosisName' class='col-sm-2 col-form-label'>진료명</label>
        <div class='col-sm-10'>
        <input class='form-control' id='diagnosisName' type='text' 
                name='diagnosisName'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='diagnosisContents' class='col-sm-2 col-form-label'>진료내용</label>
        <div class='col-sm-10'>
        <input class='form-control' id='diagnosisContents' type='text' 
                name='diagnosisContents'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='recorder' class='col-sm-2 col-form-label'>기록자</label>
        <div class='col-sm-10'>
        <input class='form-control' id='recorder' type='text' 
                name='recorder'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='remarks' class='col-sm-2 col-form-label'>비고</label>
        <div class='col-sm-10'>
        <input class='form-control' id='remarks' type='text' 
                name='remarks'>
        </div>
        </div>

<div class='form-group row'>
<div class='col-sm-10'>
<button class='btn btn-primary btn-sm'>등록</button>
</div>
</div>
</form>

<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
    