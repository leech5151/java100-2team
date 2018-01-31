<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>업체등록</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
<script type="../_/js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-1.3.2-vsdoc2.js" type="text/javascript"></script>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>업체등록</h1>

<form name="form1" action="add" method='post' enctype="multipart/form-data">

<!-- <div style="text-align:right">
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    카테고리
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="" id=>숙박업소</a>
    <a class="dropdown-item" href="#">식당</a>
    <a class="dropdown-item" href="#">기타</a>
  </div>
</div>
</div> -->
<div style="text-align:right">
 <script type="text/javascript">
        $(document).ready(function () {
            $('#lstFavorites').change(function () {
                var selectedText = 
                    $(":selected").text();
                    $('#txtFavorite').val(selectedText);
                    
            });
        });
    </script>
	<script type="text/javascript">
		function submitFunc() {
		    document.form1.category.value = document.getElementByName("lstFavorites").value
		}
	</script>
<c:forEach items="${list}" var="business">
<input  class='form-control' id="category" type='hidden' name='category'>
</c:forEach>
    
<select name="lstFavorites" >
    <option value="" selected="selected">카테고리</option>
    <option onclick="submitFunc();" value="1">숙박업소</option>
    <option onclick="submitFunc();" value="2">식당</option>
    <option onclick="submitFunc();" value="3">기타</option>
</select>
</div>
<br>
<!--  <div class='form-group row'>
<label for='category' class='col-sm-2 col-form-label'>카테고리</label>
<div class='col-sm-10'>
<input class='form-control' id='category'  type='hidden' name='category' value="target.options[target.selectedIndex].value">
</div>
</div>  -->

<div class='form-group row'>
<label for='businessName' class='col-sm-2 col-form-label'>업체명</label>
<div class='col-sm-10'>
<input class='form-control' id='businessName' type='text' name='businessName' value=>
</div>
</div>

<div class='form-group row'>
<label for='open_time' class='col-sm-2 col-form-label'>오픈시간</label>
<div class='col-sm-10'>
<input class='form-control' id='open_time' type='time' name='open_time'>
</div>
</div>

<div class='form-group row'>
<label for='close_time' class='col-sm-2 col-form-label'>마감시간</label>
<div class='col-sm-10'>
<input class='form-control' id='close_time' type='time' name='close_time'>
</div>
</div>

<div class='form-group row'>
<label for='tel' class='col-sm-2 col-form-label'>전화번호</label>
<div class='col-sm-10'>
<input class='form-control' id='tel' type='text' name='tel'>
</div>
</div>

<div class='form-group row'>
<label for='menu' class='col-sm-2 col-form-label'>메뉴</label>
<div class='col-sm-10'>
<input class='form-control' id='menu' type='text' name='menu'>
</div>
</div>

<div class='form-group row'>
<label for='content' class='col-sm-2 col-form-label'>내용</label>
<div class='col-sm-10'>
<input class='form-control' id='content' type='text' name='content'>
</div>
</div>

<div class='form-group row'>
<label for='url' class='col-sm-2 col-form-label'>홈페이지</label>
<div class='col-sm-10'>
<input class='form-control' id='url' type='text' name='url'>
</div>
</div>

<div class='form-group row'>
<label for='post_no' class='col-sm-2 col-form-label'>우편번호</label>
<div class='col-sm-10'>
<input class='form-control' id='post_no' type="number" name='post_no'>
</div>
</div>

<div class='form-group row'>
<label for='primary_address' class='col-sm-2 col-form-label'>기본주소</label>
<div class='col-sm-10'>
<input class='form-control' id='primary_address' type='text' name='primary_address'>
</div>
</div>

<div class='form-group row'>
<label for='detail_address' class='col-sm-2 col-form-label'>상세주소</label>
<div class='col-sm-10'>
<input class='form-control' id='detail_address' type='text' name='detail_address'>
</div>
</div>

<div class='form-group row'>
<label for='file2' class='col-sm-2 col-form-label'>사진</label>
<div class='col-sm-10'>
<input type="file" class="form-control-file" id="file2" name="file">
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
    