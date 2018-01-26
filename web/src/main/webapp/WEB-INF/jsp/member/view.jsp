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

<c:if test="${not empty member}">
        
        <div class='form-group row'>
        <label for='memberNo' class='col-sm-2 col-form-label'>번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='memberNo' type='number' 
                name='memberNo' value='${member.memberNo}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='name' class='col-sm-2 col-form-label'>이름</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='name' type='text' 
                name='name' value='${member.name}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='nicname' class='col-sm-2 col-form-label'>별명</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='nicname' type='text' 
                name='nicname' value='${member.nicname}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='memberType' class='col-sm-2 col-form-label'>회원유형</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='memberType' type='text' 
                name='memberType' value='${member.memberType}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='email' class='col-sm-2 col-form-label'>이메일</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='email' type='text' 
                name='email' value='${member.email}'>
        </div>
        </div>
 
        <div class='form-group row'>
        <label for='password' class='col-sm-2 col-form-label'>암호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='password' type='password' 
                name='password' value='${member.password}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='tel' class='col-sm-2 col-form-label'>전화번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='tel' type='text' 
                name='tel' value='${member.tel}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='push' class='col-sm-2 col-form-label'>알람수신여부</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='push' type='text' 
                name='push' value='${member.push}'>
        </div>
        </div>
		
        <div class='form-group row'>
        <label for='postalNo' class='col-sm-2 col-form-label'>우편번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='tel' type='text' 
                name='postalNo' value='${member.postalNo}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='primaryAddress' class='col-sm-2 col-form-label'>기본주소</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='primaryAddress' type='text' 
                name='primaryAddress' value='${member.primaryAddress}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='detailAddress' class='col-sm-2 col-form-label'>상세주소</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='detailAddress' type='text' 
                name='detailAddress' value='${member.detailAddress}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='createDate' class='col-sm-2 col-form-label'>등록일</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='createDate' type='date' 
                value='${member.createDate}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label class='col-sm-2 col-form-label'>첨부파일</label>
        <div class='col-sm-10'>
        <c:forEach items="${member.files}" var="file">
          <a href="${contextPath}/download/${file.filename}">${file.filename}</a><br>
        </c:forEach>
        </div>
        </div>
        
        <div class='form-group row'>
        <div class='col-sm-10'>
        <a href="modify?no=${member.memberNo}" class="btn btn-primary btn-sm">변경</a>
        <a href="list" class="btn btn-primary btn-sm">돌아가기</a>
        </div>
        </div>
        
</c:if>
<c:if test="${empty member}">
        <p>'${param.memberNo}'번 게시물이 없습니다.</p>
</c:if>

<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
