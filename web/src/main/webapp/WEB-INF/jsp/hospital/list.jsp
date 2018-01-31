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
<title>병원게시판</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel='stylesheet' href='../../css/common.css'>


</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>병원 목록</h1>

<jsp:include page="../listToolbar.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>병원명</th><th>운영시간</th><th>상세주소</th><th>전화번호</th><th>의료진</th><th>사진</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="hospital">
        <tr>
        <td>${hospital.hospitalNo}</td>
        <td><a href='${hospital.hospitalNo}'>${hospital.hospitalName}</a></td>
        <td>${hospital.openTime}~${hospital.closeTime}</td>
         <td>${hospital.detailAddress}</td>
        <td>${hospital.hospitalTel}</td>
        <td>${hospital.medicalStaff}</td>
        <td>
        <c:forEach items="${hospital.files}" var="file">
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
    