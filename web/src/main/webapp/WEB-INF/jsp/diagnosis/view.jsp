<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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

<h1>회원 상세정보</h1>

<c:if test="${not empty diagnosis}">
        <form action='update' method='post'>
        
        <div class='form-group row'>
        <label for='diagnosisNo' class='col-sm-2 col-form-label'>진료번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='diagnosisNo' type='number' 
                name='diagnosisNo' value='${diagnosis.diagnosisNo}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='diagnosis.member.name' class='col-sm-2 col-form-label'>회원명</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='diagnosis.member.name' type='text' 
                name='diagnosis.member.name' value='${diagnosis.member.name}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='diagnosis.hospital.hospitalName' class='col-sm-2 col-form-label'>병원명</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='diagnosis.hospital.hospitalName' type='text' 
                name='diagnosis.hospital.hospitalName' value='${diagnosis.hospital.hospitalName}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='dogweight' class='col-sm-2 col-form-label'>강아지무게</label>
        <div class='col-sm-10'>
        <input class='form-control' id='dogweight' type='number' 
                name='dogweight' value='${diagnosis.dogweight}'>
        </div>
        </div>
        
        
        <div class='form-group row'>
        <label for='diagnosisCategory' class='col-sm-2 col-form-label'>분류</label>
        <div class='col-sm-10'>
        <input class='form-control' id='diagnosisCategory' type='text' 
                name='diagnosisCategory' value='${diagnosis.diagnosisCategory}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='diagnosisName' class='col-sm-2 col-form-label'>진료명</label>
        <div class='col-sm-10'>
        <input class='form-control' id='diagnosisName' type='text' 
                name='diagnosisName' value='${diagnosis.diagnosisName}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='diagnosisContents' class='col-sm-2 col-form-label'>진료내용</label>
        <div class='col-sm-10'>
        <input class='form-control' id='diagnosisContents' type='text' 
                name='diagnosisContents' value='${diagnosis.diagnosisContents}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='dateRecording' class='col-sm-2 col-form-label'>기록일자</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='dateRecording' type='date' 
                name='dateRecording' value='${diagnosis.dateRecording}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='recorder' class='col-sm-2 col-form-label'>기록자</label>
        <div class='col-sm-10'>
        <input class='form-control' id='recorder' type='text' 
                name='recorder' value='${diagnosis.recorder}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='remarks' class='col-sm-2 col-form-label'>비고</label>
        <div class='col-sm-10'>
        <input class='form-control' id='remarks' type='text' 
                name='remarks' value='${diagnosis.remarks}'>
        </div>
        </div>
        
        <div class='form-group row'>
					<div class='col-sm-10'>
						<button class='btn btn-primary btn-sm'>변경</button>
						<a href='delete?no=${diagnosis.diagnosisNo}'
							class='btn btn-primary btn-sm'>삭제</a>
					</div>
				</div>
        
        </form>
        
        
</c:if>
<c:if test="${empty diagnosis}">
        <p>'${param.diagnosisNo}'번 게시물이 없습니다.</p>
</c:if>

<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
