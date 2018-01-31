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

        <jsp:include page="../listToolbar.jsp" />


        

<c:forEach items="${list}" var="trainning">
<div class="ss">
          <div class="card flex-md-row mb-4 box-shadow h-md-250" >
                     <iframe width="auto" height="auto" src="https://www.youtube.com/embed/vRzkMWZ61Vs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${trainning.trainningNo}</font></font></strong>
              <h3 class="mb-0">
                <a class="text-dark" href='${trainning.trainningNo}'><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${trainning.title}</font></font></a>
              </h3>
              <div class="mb-1 text-muted"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${trainning.registrationDate}</font></font></div>
              <p class="card-text mb-auto"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${trainning.contents}</font></font></p>
              <a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">계속 읽기</font></font></a>
              <div class="btn-box">
                     <button type="button" class="btn btn-sm btn-outline-secondary">좋아요</button>
                     <button type="button" class="btn btn-sm btn-outline-secondary">댓글</button>
                     </div>
            </div>
          </div>
        </div>
</c:forEach>
        
        
        
        <jsp:include page="../paging.jsp" />


        <jsp:include page="../footer.jsp" />

    </div>

    <jsp:include page="../jslib.jsp" />

</body>
</html>

    