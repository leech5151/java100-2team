<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<title>게시물 변경</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>
 
<h1>게시물 변경</h1>

<c:if test="${not empty trainning}">
        <form action='update' method='post' enctype="multipart/form-data">
        
        <div class='form-group row'>
        <label for='trainningNo' class='col-sm-2 col-form-label'>훈련번호</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='trainningNo' type='number' 
                name='trainningNo' value='${trainning.trainningNo}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='category' class='col-sm-2 col-form-label'>카테고리</label>
        <div class='col-sm-10'>
        <input class='form-control' readonly id='category' type='text' 
                name='category' value='${trainning.category}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='title' class='col-sm-2 col-form-label'>제목</label>
        <div class='col-sm-10'>
        <input class='form-control' id='title' type='text' 
                name='title' value='${trainning.title}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='contents' class='col-sm-2 col-form-label'>설명</label>
        <div class='col-sm-10'>
        <input class='form-control' id='contents' type='text' 
                name='contents' value='${trainning.contents}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='maintextContents' class='col-sm-2 col-form-label'>본문설명</label>
        <div class='col-sm-10'>
        <input class='form-control' id='maintextContents' type='text' 
                name='maintextContents' value='${trainning.maintextContents}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='viewCount' class='col-sm-2 col-form-label'>조회수</label>
        <div class='col-sm-10'>
        <input class='form-control' id='viewCount' type='number' 
                name='viewCount' value='${trainning.viewCount}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='registrationDate' class='col-sm-2 col-form-label'>등록일시</label>
        <div class='col-sm-10'>
        <input class='form-control' id='registrationDate' type='date' 
                name='registrationDate' value='${trainning.registrationDate}'>
        </div>
        </div>
        
        <div class='form-group row'>
        <label for='likes' class='col-sm-2 col-form-label'>추천수</label>
        <div class='col-sm-10'>
        <input class='form-control' id='likes' type='number' 
                name='likes' value='${trainning.likes}'>
        </div>
        </div>
        
        
        
        <div class='form-group row'>
        <label class='col-sm-2 col-form-label'>첨부파일</label>
        <div class='col-sm-10'>
        <c:forEach items="${trainning.files}" var="file">
          <img src="${contextPath}/download/${file.filename}">${file.filename}<br>
        
        </c:forEach>
        </div>
        </div><iframe width="854" height="480" src="https://www.youtube.com/embed/dFNle5sNTMI" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        
        <div class='form-group row'>
		<label for='file1' class='col-sm-2 col-form-label'>사진</label>
		<div class='col-sm-10'>
		<input type="file" class="form-control-file" id="file1" name="file">
		</div>
		</div>
		
        <div class='form-group row'>
        <div class='col-sm-10'>
        <button class='btn btn-primary btn-sm'>변경</button>
        <a href='delete?no=${trainning.trainningNo}' class='btn btn-primary btn-sm'>삭제</a>
        </div>
        </div>
        </form>
        
</c:if>
<c:if test="${empty trainning}">
        <p>'${param.trainningNo}'번 게시물이 없습니다.</p>
</c:if>

<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
