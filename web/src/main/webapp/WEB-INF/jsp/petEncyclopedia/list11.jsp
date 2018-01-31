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

<link rel="stylesheet" href="../../css/reset.css"> <!-- petEncyclopedia CSS reset -->
<link rel="stylesheet" href="../../css/style.css"> <!-- petEncyclopedia Resource style -->

</head>
<body>
<header class="cd-auto-hide-header">
    <img src='${contextPath}/images/bootstrap-solid.svg' width='50' height='50' class='d-inline-block align-top' alt=''>

    <nav class="cd-primary-nav">
        <a href="#cd-navigation" class="nav-trigger">
            <span>
                <em aria-hidden="true"></em>
                Menu
            </span>
        </a> <!-- .nav-trigger -->

        <ul id="cd-navigation">
            <li><a href="#0">The team</a></li>
            <li><a href="#0">Our Products</a></li>
            <li><a href="#0">Our Services</a></li>
            <li><a href="#0">Shopping tools</a></li>
            <li><a href="#0">Contact Us</a></li>
        </ul>
    </nav> <!-- .cd-primary-nav -->

    <nav class="cd-secondary-nav">
        <ul>
            <li><a class="active" href="#0">Intro</a></li>
            <li><a href="#0">Features</a></li>
            <li><a href="#0">Photos</a></li>
            <li><a href="#0">Videos</a></li>
            <li><a href="#0">Specs</a></li>
            <li><a href="#0">Support</a></li>
            <li><a href="#0">Compare</a></li>
            <li><a href="#0">Buy</a></li>
        </ul>
    </nav> <!-- .cd-secondary-nav -->
</header> <!-- .cd-auto-hide-header -->

<main class="cd-main-content sub-nav">
   
    <div class='container'>
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
</main>
    <jsp:include page="../jslib.jsp" />
    <!-- PetEncyclopedia 추가 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script>
    if( !window.jQuery ) document.write('<script src="js/jquery-3.0.0.min.js"><\/script>');
</script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
<!-- PetEncyclopedia 추가 -->
</body>
</html>
