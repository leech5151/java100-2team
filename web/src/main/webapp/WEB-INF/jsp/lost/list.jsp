<%@page import="java100.app.domain.Lost"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>    

<h3>미아찾기</h3>

<jsp:include page="../listToolbar.jsp"/>

<table class='table table-hover'>
<thead>
<tr>
<th>미아번호</th><th>강아지이름</th><th>품종</th><th>조회수</th><th>분실강아지사진</th>
</tr>
</thead>
<tbody>

<c:forEach items="${list}" var="lost">
        <tr>
        <td>${lost.lostNo}</td>
        <td><a href='${lost.lostNo}'>${lost.petName}</a></td>
        <td>${lost.breed}</td>
        <td>${lost.viewCount}</td>
        <td>
        <c:forEach items="${lost.files}" var="file">
        <img src="${contextPath}/download/${file.filename}" alt="${file.filename}" width="50" height="50">
        </c:forEach>
        </td>
        </tr>
</c:forEach>

</tbody>
</table>

<jsp:include page="../paging.jsp"/>

<jsp:include page="../footer.jsp"/>

<jsp:include page="../jslib.jsp"/>

