<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
        <h1>아지백과 등록</h1>
        <form action="add" method='post' enctype="multipart/form-data">
            <div class='form-group row'>
                <label for='category' class='col-sm-2 col-form-label'>카테고리</label>
                <div class='col-sm-10'>
                    <input class='form-control' id='category' type='text'
                        name='category'>
                </div>
            </div>
            <div class='form-group row'>
                <label for='title' class='col-sm-2 col-form-label'>제목</label>
                <div class='col-sm-10'>
                    <input class='form-control' id='title' type='text' name='title'>
                </div>
            </div>
            <div class='form-group row'>
                <label for='contents' class='col-sm-2 col-form-label'>설명</label>
                <div class='col-sm-10'>
                    <input class='form-control' id='contents' type='text'
                        name='contents'>
                </div>
            </div>
            <div class='form-group row'>
                <label for='viewCount' class='col-sm-2 col-form-label'>조회수</label>
                <div class='col-sm-10'>
                    <input class='form-control' readonly id='viewCount' type='number'
                        value='${petEncyclopedia.viewCount}'>
                </div>
            </div>

            <div class='form-group row'>
                <label for='likes' class='col-sm-2 col-form-label'>추천수</label>
                <div class='col-sm-10'>
                    <input class='form-control' id='likes' type='number' name='likes'>
                </div>
            </div>
            <div class='form-group row'>
                <label for='maintextContent' class='col-sm-2 col-form-label'>본문내용</label>
                <div class='col-sm-10'>
                    <input class='form-control' id='maintextContent' type='text'
                        name='maintextContent'>
                </div>
            </div>
            <!--  
            <div class='form-group row'>
                <label for='memberNo' class='col-sm-2 col-form-label'>회원번호</label>
                <div class='col-sm-10'>
                    <input class='form-control' readonly id='memberNo' type='number'
                        name='memberNo'>
                </div>
            </div>
            -->
            <div class='form-group row'>
                <label for='file1' class='col-sm-2 col-form-label'>첨부파일</label>
                <div class='col-sm-10'>
                    <input type="file" class="form-control-file" id="file1" name="file">
                </div>
            </div>

            <div class='form-group row'>
                <div class='col-sm-10'>
                    <button class='btn btn-primary btn-sm'>등록</button>
                </div>
            </div>
        </form>
        <jsp:include page="../footer.jsp" />
    </div>
    <jsp:include page="../jslib.jsp" />
</body>
</html>
