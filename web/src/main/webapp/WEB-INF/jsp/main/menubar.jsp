<%@page import="java100.app.domain.Member"%>
<%@page import="java100.app.domain.Lost"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#experience">Pet Care</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#education">Pet Together</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#skills">Pet Story</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#interests">Pet Cast</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#awards">Lost</a>
          </li>
        </ul>
      </div>
      
      <div class='form-group row' align="right">
       <c:choose>
       <c:when test="${sessionScope.loginUser != null}">
		<a href="${contextPath}/app/auth/logout" 
        class='btn btn-outline-dark btn-sm' id="button_sign">logout</a>
       </c:when>
       <c:otherwise> 
       <jsp:include page="../auth/logingo.jsp"></jsp:include> 
        
        <a href="../member/form" 
        class='btn btn-outline-dark btn-sm' id="button_sign">signUp</a> 
       </c:otherwise>
       </c:choose>
       
       <%-- 

        <a href="${contextPath}/app/auth/login" 
        class='btn btn-outline-dark btn-sm' id="button_sign">login</a>
        --%>
     </div>

