<%@page import="java100.app.domain.Member"%>
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
<th>번호</th><th>이름</th><th>닉네임</th><th>이메일</th><th>등록일자</th><th>회원사진</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="member">
        <tr>
        <td>${member.memberNo}</td>
        <td><a href='${member.memberNo}'>${member.name}</a></td>
        <td>${member.nicname}</td>
        <td>${member.email}</td>
        <td>${member.createDate}</td>
        <td>
        <c:forEach items="${member.files}" var="file">
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
    