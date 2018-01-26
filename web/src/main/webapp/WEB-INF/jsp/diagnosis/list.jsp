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
<th>진료번호</th><th>병원명</th><th>회원명</th><th>진료분류</th><th>진료명</th><th>진료내용</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="diagnosis">
        <tr>
        <td>${diagnosis.diagnosisNo}</td>
        <td><a href='${diagnosis.diagnosisNo}'>${diagnosis.member.name}</a></td>
        <td>${diagnosis.hospital.hospitalName}</td>
        <td>${diagnosis.diagnosisCategory}</td>
        <td>${diagnosis.diagnosisName}</td>
        <td>${diagnosis.diagnosisContents}</td>
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
    