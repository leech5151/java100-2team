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

<h1>펫과 함께</h1>

<jsp:include page="../listToolbar.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>사진</th><th>주소</th><th>제목</th>
</tr>
</thead>
<tbody>
<center><h2>실패값</h2></center>
<c:forEach items="${list}" var="business">
<c:if test="${ empty business.category}">
        <tr>
        <td>${business.businessNo}</td>
        <td>
        <c:forEach items="${business.files}" var="file">
        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" width="50px" height="50px">
        </c:forEach>
        </td>
        <td><a href='${business.businessNo}'>${business.businessName}</a></td>
        <td>${business.primary_address}</td>
        </tr>
</c:if>
</c:forEach>
</tbody>
</table>
<jsp:include page="../paging.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>사진</th><th>주소</th><th>제목</th>
</tr>
</thead>
<tbody>
<center><h2>숙박업소</h2></center>
	<c:forEach items="${list}" var="business">
    <c:if test="${business.category eq '1'}">
	        <tr>
	        <td>${business.businessNo}</td>
	        <td>
	        <c:forEach items="${business.files}" var="file">
	        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" width="50px" height="50px">
	        </c:forEach>
	        </td>
	        <td><a href='${business.businessNo}'>${business.businessName}</a></td>
	        <td>${business.primary_address}</td>
	        </tr>
    </c:if>
	</c:forEach>
</tbody>
</table>
<jsp:include page="../paging.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>사진</th><th>주소</th><th>제목</th>
</tr>
</thead>
<tbody>
<center><h2>식당</h2></center>
<c:forEach items="${list}" var="business">
<c:if test="${business.category eq '2'}">
        <tr>
        <td>${business.businessNo}</td>
        <td>
        <c:forEach items="${business.files}" var="file">
        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" width="50px" height="50px">
        </c:forEach>
        </td>
        <td><a href='${business.businessNo}'>${business.businessName}</a></td>
        <td>${business.primary_address}</td>
        </tr>
</c:if>
</c:forEach>
</tbody>
</table>
<jsp:include page="../paging.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>사진</th><th>주소</th><th>제목</th>
</tr>
</thead>
<tbody>
<center><h2>기타</h2></center>
<c:forEach items="${list}" var="business">
<c:if test="${business.category eq '3'}">
        <tr>
        <td>${business.businessNo}</td>
        <td>
        <c:forEach items="${business.files}" var="file">
        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" width="50px" height="50px">
        </c:forEach>
        </td>
        <td><a href='${business.businessNo}'>${business.businessName}</a></td>
        <td>${business.primary_address}</td>
        </tr>
</c:if>
</c:forEach>

</tbody>
</table>
<jsp:include page="../paging.jsp"/>




<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
    