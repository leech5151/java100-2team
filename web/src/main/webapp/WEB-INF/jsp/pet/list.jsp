<%@ page import="java100.app.domain.Pet"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    
<!DOCTYPE html>
<html>
<head>
<title>내 강아지</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
<div class='container'>

<jsp:include page="../header.jsp"/>

<h1>내 강아지</h1>

<jsp:include page="../listToolbar.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>번호</th><th>이름</th><th>품종</th><th>나이</th><th>체중</th><th>목표체중</th><th>삭제</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="pet">
        <tr>
        <td>${pet.petNo}</td>
        <td>${pet.petName}</td>
        <td>${pet.breed}</td>
        <td>${pet.age}</td>
        <td>${pet.weight}</td>
        <td>${pet.goalWeight}</td>
        <td><a href='delete?petNo=${pet.petNo}' class='btn btn-danger btn-sm'>삭제</a></td>
        </tr>
</c:forEach>

</tbody>
</table>
<a href='../member/view?no=${member.memberNo}' class='btn btn-primary btn-sm'>돌아가기</a>

<jsp:include page="../paging.jsp"/>
 
<jsp:include page="../footer.jsp"/>

</div>

<jsp:include page="../jslib.jsp"/>

</body>
</html>
    