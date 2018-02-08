<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>미아등록</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>미아 정보 입력</h1>

<form action="add" method='post' enctype="multipart/form-data">

<div class='form-group row'>
<label for='petName' class='col-sm-2 col-form-label'>강아지이름</label>
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
<label for='lostLocation' class='col-sm-2 col-form-label'>분실장소</label>
<div class='col-sm-10'>
<input class='form-control' id='lostLocation' type='text' name='lostLocation'>
</div>
</div>

<div class='form-group row'>
<label for='lostDate' class='col-sm-2 col-form-label'>분실일</label>
<div class='col-sm-10'>
<input class='form-control' id='lostDate' type='date' name='lostDate'>
</div>
</div>

<div class='form-group row'>
<label for='character' class='col-sm-2 col-form-label'>강아지 특징</label>
<div class='col-sm-10'>
<input class='form-control' id='character' type='text' name='character'>
</div>
</div>

<div class='form-group row'>
<label for='reward' class='col-sm-2 col-form-label'>사례금</label>
<div class='col-sm-10'>
<input class='form-control' id='reward' type='number' name='reward'>
</div>
</div>

<div class='form-group row'>
<label for='contents' class='col-sm-2 col-form-label'>기타사항</label>
<div id="dd" class='col-sm-10'>
<input class='form-control' id='contents' type='text' name='contents'>
</div>
</div>

<div class='form-group row'>
<label for='file1' class='col-sm-2 col-form-label'>사진 등록</label>
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
    