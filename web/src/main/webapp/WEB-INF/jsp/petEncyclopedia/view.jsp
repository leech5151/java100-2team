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

        <h1>아지백과 상세</h1>

        <c:if test="${not empty petEncyclopedia}">
            <form action='update' method='post' enctype="multipart/form-data">
                <div class='form-group row'>
                    <label for='petEncyclopediaNo' class='col-sm-2 col-form-label'>번호</label>
                    <div class='col-sm-10'>
                        <input class='form-control' readonly id='petEncyclopediaNo'
                            type='number' name='petEncyclopediaNo'
                            value='${petEncyclopedia.petEncyclopediaNo}'>
                    </div>
                </div>
                
                <div class='form-group row'>
                    <label for='category' class='col-sm-2 col-form-label'>카테고리</label>
                    <div class='col-sm-10'>
                        <input class='form-control' id='category' type='text'
                            name='category' value='${petEncyclopedia.category}'>
                    </div>
                </div>
                
                <div class='form-group row'>
                    <label class='col-sm-2 col-form-label'>사진</label>
                    <div class='col-sm-10'>
                        <c:forEach items="${petEncyclopedia.files}" var="file">
                            <img src="${contextPath}/download/${file.filename}" width="200px" />
                            <!--  <a href="${contextPath}/download/${file.filename}">${file.filename}</a>-->
                        </c:forEach>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='file1' class='col-sm-2 col-form-label'>첨부파일</label>
                    <div class='col-sm-10'>
                        <input type="file" class="form-control-file" id="file1"
                            name="file">
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='title' class='col-sm-2 col-form-label'>제목</label>
                    <div class='col-sm-10'>
                        <input class='form-control' id='title' type='text' name='title'
                            value='${petEncyclopedia.title}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='contents' class='col-sm-2 col-form-label'>설명</label>
                    <div class='col-sm-10'>
                        <input class='form-control' id='contents' type='text'
                            name='contents' value='${petEncyclopedia.contents}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='registrationDate' class='col-sm-2 col-form-label'>등록일시</label>
                    <div class='col-sm-10'>
                        <input class='form-control' id='registrationDate' type='date'
                            name='registrationDate'
                            value='${petEncyclopedia.registrationDate}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='viewCount' class='col-sm-2 col-form-label'>조회수</label>
                    <div class='col-sm-10'>
                        <input class='form-control' readonly id='viewCount' type='number'
                            name='viewCount' value='${petEncyclopedia.viewCount}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='likes' class='col-sm-2 col-form-label'>추천수</label>
                    <div class='col-sm-10'>
                        <input class='form-control' readonly id='likes' type='number'
                            name='likes' value='${petEncyclopedia.likes}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='maintextContent' class='col-sm-2 col-form-label'>본문내용</label>
                    <div class='col-sm-10'>
                        <input class='form-control' id='maintextContent' type='text'
                            name='maintextContent' value='${petEncyclopedia.maintextContent}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <label for='memberNo' class='col-sm-2 col-form-label'>회원번호</label>
                    <div class='col-sm-10'>
                        <input class='form-control' readonly id='memberNo' type='number'
                            name='memberNo' value='${petEncyclopedia.member.memberNo}'>
                    </div>
                </div>
                <div class='form-group row'>
                    <div class='col-sm-10'>
                        <button class='btn btn-primary btn-sm' >추천</button>
                        <button class='btn btn-primary btn-sm'>변경</button>
                        <a href='delete?no=${petEncyclopedia.petEncyclopediaNo}' class='btn btn-primary btn-sm'>삭제</a>
                        <button class='btn btn-primary btn-sm' >리뷰등록</button>
                        <a href='../petEncyclopedia/list' class='btn btn-primary btn-sm'>목록</a>
                    </div>
                </div>
            </form>
        </c:if>
        <c:if test="${empty petEncyclopedia}">
            <p>'${param.petEncyclopediaNo}'번 회원 정보가 없습니다.</p>
        </c:if>
        <jsp:include page="../footer.jsp" />
    </div>
    <jsp:include page="../jslib.jsp" />
</body>
</html>
