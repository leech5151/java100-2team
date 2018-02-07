<%@page import="java100.app.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>아지백과</title>
<link rel='stylesheet'
    href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
    <div class='container'>
        <jsp:include page="../header.jsp" />
        <h1>아지백과 목록</h1>
        <jsp:include page="../listToolbar.jsp" />
        <c:forEach items="${list}" var="petEncyclopedia">
                <div id="con-wap_1">
                    <div class="card flex-md-row mb-4 box-shadow h-md-250">
                    <c:forEach items="${petEncyclopedia.files}" var="file">
                            <img src="${contextPath}/download/${file.filename}" width="200px" height="200px" />
                        </c:forEach>
                        <div class="card-body d-flex flex-column align-items-start">
                            <strong class="d-inline-block mb-2 text-primary">${petEncyclopedia.category}</strong>
                            <h3 class="mb-0">
                                <a class="text-dark" href='${petEncyclopedia.petEncyclopediaNo}'>${petEncyclopedia.title}</a>
                            </h3>
                            <div class="mb-1 text-muted">${petEncyclopedia.registrationDate}</div>
                            <div class="mb-1 text-muted so1">조회수 ${petEncyclopedia.viewCount}</div>
                            <div class="btn-box">
                            <button type="button" class="btn btn-sm btn-outline-secondary"><a href='${petEncyclopedia.petEncyclopediaNo}'>더보기</a></button>
                            <button type="button" class="btn btn-sm btn-outline-secondary">좋아요</button>
                            </div>
                        </div>
                    </div>
                </div>
        </c:forEach>
        
        <div id="clear5367"></div>
        
        <jsp:include page="../paging.jsp" />
        <jsp:include page="../footer.jsp" />
    </div>
    <jsp:include page="../jslib.jsp" />
    
    
</body>
</html>
