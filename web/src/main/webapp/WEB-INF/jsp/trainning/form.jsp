<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>게시물등록</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>게시물등록</h1>

<form action="add" method='post' enctype="multipart/form-data">



<div class='form-group row'>
<label for='category' class='col-sm-2 col-form-label'>카테고리</label>
<div class='col-sm-10'>
<input class='form-control' id='category' type='text' name='category'>
</div>
</div>

<div class='form-group row'>
<label for='title' class='col-sm-2 col-form-label'>제목</label>
<div class='col-sm-10'>
<input class='form-control' id='title' type='text' name='title'>
</div>
</div>

<div class='form-group row'>
<label for='contents' class='col-sm-2 col-form-label'>설명</label>
<div class='col-sm-10'>
<input class='form-control' id='contents' type='text' name='contents'>
</div>
</div>

<div class='form-group row'>
<label for='maintextContents' class='col-sm-2 col-form-label'>본문설명</label>
<div class='col-sm-10'>
<input class='form-control' id='maintextContents' type='text' name='maintextContents'>
</div>
</div>

<div class='form-group row'>
<label for='viewCount' class='col-sm-2 col-form-label'>조회수</label>
<div class='col-sm-10'>
<input class='form-control' id='viewCount' type='number' name='viewCount'>
</div>
</div>

<div class='form-group row'>
<label for='registrationDate' class='col-sm-2 col-form-label'>등록일시</label>
<div class='col-sm-10'>
<input class='form-control' id='registrationDate' type='date' name='registrationDate'>
</div>
</div>

<div class='form-group row'>
<label for='likes' class='col-sm-2 col-form-label'>추천수</label>
<div class='col-sm-10'>
<input class='form-control' id='likes' type='number' name='likes'>
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
    