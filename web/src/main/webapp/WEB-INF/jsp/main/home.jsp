<%@page import="java100.app.domain.Member"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Balance Pet</title>

    <!-- Bootstrap core CSS -->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../vendor/devicons/css/devicons.min.css" rel="stylesheet">
    <link href="../../vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../css/resume.min.css" rel="stylesheet">
    
    <!-- 자체 작업 CSS -->
    <link href="../../css/home.css" rel="stylesheet">

  </head>

  <body id="page-top">
  <div class="home">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Balance Pet</span>
        <span class="d-none d-lg-block">

        <c:if test="${not empty start}">
        <div class='form-group row'>
        <div class='col-sm-10'>
        <c:forEach items="${start.files}" var="file">
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="${contextPath}/download/${file.filename}" alt="${file.filename}">
        </c:forEach>
        </div>
        </div>
        </c:if>

        </span>
      </a>
    <jsp:include page="menubar.jsp"></jsp:include>
    </nav>

    <div class="container-fluid p-0">
    <jsp:include page="section_home.jsp"></jsp:include>
        
    <jsp:include page="section_petCare.jsp"></jsp:include>
    
    <jsp:include page="section_together.jsp"></jsp:include>
    
    <jsp:include page="section_petStory.jsp"></jsp:include>
    
    <jsp:include page="section_petCast.jsp"></jsp:include>
    
    <jsp:include page="section_lost.jsp"></jsp:include>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../../js/resume.min.js"></script>
    </div>
  </body>

</html>
    