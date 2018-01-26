<%@page import="java100.app.domain.Trainning"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>
 
<jsp:include page="../header.jsp"/>

<h1>게시물 목록</h1>

<jsp:include page="../listToolbar.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>훈련번호</th><th>카테고리</th><th>제목</th><th>설명</th><th>본문내용</th><th>조회수</th><th>등록일시</th><th>추천수</th><th>회원사진</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="trainning">
        <tr>
        <td>${trainning.trainningNo}</td>
        <td>${trainning.category}</td>
        <td><a href='${trainning.trainningNo}'>${trainning.title}</a></td>
        <td>${trainning.contents}</td>
        <td>${trainning.maintextContents}</td>
        <td>${trainning.viewCount}</td>
        <td>${trainning.registrationDate}</td>
        <td>${trainning.likes}</td>
        <td>
        <c:forEach items="${trainning.files}" var="file">
        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" width="50px" height="50px">
        </c:forEach>
        </td>
        </tr>
</c:forEach>

</tbody>
</table>

<jsp:include page="../paging.jsp"/>


<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
    