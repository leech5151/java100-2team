<%@page import="java100.app.domain.Member"%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<nav class="navbar navbar-light justify-content-between">
  <c:if test="${not empty form}">
  <c:if test="${form.type ne '사업자회원' }">
  <script src="../../js/type_alert.js"></script>
  <a href='form' class='btn btn-primary btn-sm' onclick="JSalert()">업체등록</a>
  </c:if>
  </c:if>
  <a href='form' class='btn btn-primary btn-sm' onclick="JSalert()">업체등록</a>
  <!-- <a href='form' class='btn btn-primary btn-sm' >등록</a> -->
  <form class="form-inline" action="list">
    <input name="words"
           class="form-control form-control-sm mr-sm-2" type="search" 
           placeholder="검색" aria-label="Search">
    <button class="btn btn-sm btn-outline-success my-2 my-sm-0" 
            type="submit">Search</button>
  </form>
</nav>

