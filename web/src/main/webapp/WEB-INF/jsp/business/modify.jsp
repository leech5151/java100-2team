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
<h1>업체 상세정보</h1>
<c:if test="${not empty business}">
<tr>
<td>
<form action='update' method='post' enctype="multipart/form-data">
        
        
        <div class='form-group row'>
        <div class='col-sm-10'>
        <c:forEach items="${business.files}" var="file">
        <center>
        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" height=100%>
        </center>
        </c:forEach>
        </div>
        </div>
</form>
</td>
<td>
<form action='update' method='post' enctype="multipart/form-data">
        
           <div class='form-group row'>
        <label for='businessNo' class='col-sm-2 col-form-label'>번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='businessNo' type='number' 
                name='businessNo' value='${business.businessNo}'>
        </div>
        </div>
        
		        <div class='form-group row'>
		<label for='category' class='col-sm-2 col-form-label'>카테고리</label>
		<div class='col-sm-10'>
		<input class='form-control' id='category' type='text' name='category'
		          value='${business.category}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='businessName' class='col-sm-2 col-form-label'>업체명</label>
		<div class='col-sm-10'>
		<input class='form-control' id='businessName' type='text' name='businessName'
		          value='${business.businessName}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='open_time' class='col-sm-2 col-form-label'>오픈시간</label>
		<div class='col-sm-10'>
		<input class='form-control' id='open_time' type='time' name='open_time'
		          value='${business.open_time}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='close_time' class='col-sm-2 col-form-label'>마감시간</label>
		<div class='col-sm-10'>
		<input class='form-control' id='close_time' type='time' name='close_time'
		          value='${business.close_time}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='tel' class='col-sm-2 col-form-label'>전화번호</label>
		<div class='col-sm-10'>
		<input class='form-control' id='tel' type='text' name='tel'
		          value='${business.tel}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='menu' class='col-sm-2 col-form-label'>메뉴</label>
		<div class='col-sm-10'>
		<input class='form-control' id='menu' type='text' name='menu'
		          value='${business.menu}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='content' class='col-sm-2 col-form-label'>내용</label>
		<div class='col-sm-10'>
		<input class='form-control' id='content' type='text' name='content'
		          value='${business.content}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='url' class='col-sm-2 col-form-label'>홈페이지</label>
		<div class='col-sm-10'>
		<input class='form-control' id='url' type='text' name='url'
		          value='${business.url}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='post_no' class='col-sm-2 col-form-label'>우편번호</label>
		<div class='col-sm-10'>
		<input class='form-control' id='post_no' type="number" name='post_no'
		          value='${business.post_no}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='primary_address' class='col-sm-2 col-form-label'>기본주소</label>
		<div class='col-sm-10'>
		<input class='form-control' id='primary_address' type='text' name='primary_address'
		          value='${business.primary_address}'>
		</div>
		</div>
		
		<div class='form-group row'>
		<label for='detail_address' class='col-sm-2 col-form-label'>상세주소</label>
		<div class='col-sm-10'>
		<input class='form-control' id='detail_address' type='text' name='detail_address'
		          value='${business.detail_address}'>
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
        <button class='btn btn-primary btn-sm'>변경</button>
        <a href='delete?bus_no=${business.businessNo}' class='btn btn-primary btn-sm'>삭제</a>
        </div>
        </div>

	
</form>

</td>
</tr>
</c:if>
<c:if test="${empty business}">
        <p>'${param.businessNo}'번 게시물이 없습니다.</p>
</c:if>

<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
