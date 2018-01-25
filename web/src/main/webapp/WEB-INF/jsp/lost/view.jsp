<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<title>미아찾기</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>미아 상세정보</h1>

<c:if test="${not empty lost}">
        <form action='update' method='post' enctype="multipart/form-data">
        
        <div class='form-group row'>
        <label for='lostNo' class='col-sm-2 col-form-label'>미아번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='lostNo' type='number' 
                name='lostNo' value='${lost.lostNo}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='petName' class='col-sm-2 col-form-label'>강아지이름</label>
        <div class='col-sm-10'>
        <input class='form-control' id='petName' type='text' 
                name='petName' value='${lost.petName}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='breed' class='col-sm-2 col-form-label'>품종</label>
        <div class='col-sm-10'>
        <input class='form-control' id='breed' type='text' 
                name='breed' value='${lost.breed}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='lostLocation' class='col-sm-2 col-form-label'>분실장소</label>
        <div class='col-sm-10'>
        <input class='form-control' id='lostLocation' type='text' 
                name='lostLocation' value='${lost.lostLocation}'>
        </div>
        </div>

        <div class='form-group row'>
        <label for='lostDate' class='col-sm-2 col-form-label'>분실일</label>
        <div class='col-sm-10'>
        <input class='form-control' id='lostDate' type='date' 
                name='lostDate' value='${lost.lostDate}'>
        </div>
        </div>

        <div class='form-group row'>
        <label for='character' class='col-sm-2 col-form-label'>특징</label>
        <div class='col-sm-10'>
        <input class='form-control' id='character' type='text' 
                name='character' value='${lost.character}'>
        </div>
        </div>

        <div class='form-group row'>
        <label for='reward' class='col-sm-2 col-form-label'>사례금</label>
        <div class='col-sm-10'>
        <input class='form-control' id='reward' type='number' 
                name='reward' value='${lost.reward}'>
        </div>
        </div>

        <div class='form-group row'>
        <label for='viewCount' class='col-sm-2 col-form-label'>조회수</label>
        <div class='col-sm-10'>
        <input class='form-control' id='viewCount' type='number' 
                name='viewCount' value='${lost.viewCount}'>
        </div>
        </div>

        <div class='form-group row'>
        <label for='contents' class='col-sm-2 col-form-label'>기타사항</label>
        <div class='col-sm-10'>
        <input class='form-control' id='contents' type='text' 
                name='contents' value='${lost.contents}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label class='col-sm-2 col-form-label'>첨부파일</label>
        <div class='col-sm-10'>
        <c:forEach items="${lost.files}" var="file">
          <a href="${contextPath}/download/${file.filename}">${file.filename}</a><br>
        </c:forEach>
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
        <button class='btn btn-primary btn-sm'>변경</button>
        <a href='delete?no=${lost.lostNo}' class='btn btn-primary btn-sm'>삭제</a>
        </div>
        </div>
        </form>
</c:if>
<c:if test="${empty lost}">
        <p>'${param.petName}' 강아지 정보가 없습니다.</p>
</c:if>

<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
