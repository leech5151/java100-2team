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

<h1>신규회원</h1>

<form action="add" method='post' enctype="multipart/form-data">

<div class='form-group row'>
<label for='name' class='col-sm-2 col-form-label'>이름</label>
<div class='col-sm-10'>
<input class='form-control' id='name' type='text' name='name'>
</div>
</div>

<div class='form-group row'>
<label for='nicname' class='col-sm-2 col-form-label'>닉네임</label>
<div class='col-sm-10'>
<input class='form-control' id='nicname' type='text' name='nicname'>
</div>
</div>

<div class='form-group row'>
<label for='email' class='col-sm-2 col-form-label'>이메일</label>
<div class='col-sm-10'>
<input class='form-control' id='email' type='text' name='email'>
</div>
</div>

<div class='form-group row'>
<label for='password' class='col-sm-2 col-form-label'>암호</label>
<div class='col-sm-10'>
<input class='form-control' id='password' type='password' name='password'>
</div>
</div>

<div class='form-group row'>
<label for='tel' class='col-sm-2 col-form-label'>전화</label>
<div class='col-sm-10'>
<input class='form-control' id='tel' type='text' name='tel'>
</div>
</div>

<!-- 
<div class='form-group row'>
<label for='push' class='col-sm-2 col-form-label'>알람수신여부</label>
<div class='col-sm-10'>
<input class='form-control' id='push' type='checkbox' name='push' value="예">
<input class='form-control' id='push' type='checkbox' name='push' value="아니오">
</div>
</div> 
-->

<div class='form-group row'>
<label for='postalNo' class='col-sm-2 col-form-label'>우편번호</label>
<div class='col-sm-10'>
<input class='form-control' id='postalNo' type='text' name='postalNo'>
</div>
</div>

<div class='form-group row'>
<label for='primaryAddress' class='col-sm-2 col-form-label'>기본주소</label>
<div class='col-sm-10'>
<input class='form-control' id='primaryAddress' type='text' name='primaryAddress'>
</div>
</div>

<div class='form-group row'>
<label for='detailAddress' class='col-sm-2 col-form-label'>상세주소</label>
<div class='col-sm-10'>
<input class='form-control' id='detailAddress' type='text' name='detailAddress'>
</div>
</div>

<div class='form-group row'>
<label for='memberType' class='col-sm-2 col-form-label'>카테고리</label>
<div class='col-sm-10'>
<input class='form-control' id='memberType' type='text' name='memberType'>
</div>
</div>

<div class='form-group row'>
<label for='file1' class='col-sm-2 col-form-label'>사진</label>
<div class='col-sm-10'>
<input type="file" class="form-control-file" id="file1" name="file">
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
    