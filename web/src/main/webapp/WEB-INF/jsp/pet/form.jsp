<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>강아지 정보 입력</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>내 강아지 정보 입력</h1>

<form action="add" method='post'>

<div class='form-group row'>
<label for='petName' class='col-sm-2 col-form-label'>이름</label>
<div class='col-sm-10'>
<input class='form-control' id='petName' type='text' name='petName'>
</div>
</div>

<div class='form-group row'>
<label for='breed' class='col-sm-2 col-form-label'>품종</label>
<div class='col-sm-10'>
<input class='form-control' id='breed' type='text' name='breed'>
</div>
</div>

<div class='form-group row'>
<label for='age' class='col-sm-2 col-form-label'>나이</label>
<div class='col-sm-10'>
<input class='form-control' id='age' type='number' name='age'>
</div>
</div>

<div class='form-group row'>
<label for='weight' class='col-sm-2 col-form-label'>체중</label>
<div class='col-sm-10'>
<input class='form-control' id='weight' type='number' name='weight'>
</div>
</div>

<div class='form-group row'>
<label for='goalWeight' class='col-sm-2 col-form-label'>목표체중</label>
<div class='col-sm-10'>
<input class='form-control' id='goalWeight' type='number' name='goalWeight'>
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
    