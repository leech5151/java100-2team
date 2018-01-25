<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>병원등록</title>
<link rel='stylesheet'
	href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<link rel='stylesheet' href='../../css/common.css'>
</head>
<body>
	<div class='container'>

		<jsp:include page="../header.jsp" />

		<h1>신규병원</h1>

		<form action="add" method='post' enctype="multipart/form-data">

			<div class='form-group row'>
				<label for='hospitalName' class='col-sm-2 col-form-label'>병원명</label>
				<div class='col-sm-10'>
					<input class='form-control' id='hospitalName' type='text'
						name='hospitalName'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='openTime' class='col-sm-2 col-form-label'>오픈시간</label>
				<div class='col-sm-10'>
					<input class='form-control' id='openTime' type='time'
						name='openTime'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='closeTime' class='col-sm-2 col-form-label'>마감시간</label>
				<div class='col-sm-10'>
					<input class='form-control' id='closeTime' type='time'
						name='closeTime'>
				</div>
			</div>


			<div class='form-group row'>
				<label for='medicalSubject' class='col-sm-2 col-form-label'>진료목록</label>
				<div class='col-sm-10'>
					<input class='form-control' id='medicalSubject' type='text'
						name='medicalSubject'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='medicalAnimal' class='col-sm-2 col-form-label'>진료동물</label>
				<div class='col-sm-10'>
					<input class='form-control' id='medicalAnimal' type='text'
						name='medicalAnimal'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='hospitalTel' class='col-sm-2 col-form-label'>병원전화번호</label>
				<div class='col-sm-10'>
					<input class='form-control' id='hospitalTel' type='text'
						name='hospitalTel'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='medicalStaff' class='col-sm-2 col-form-label'>의료진</label>
				<div class='col-sm-10'>
					<input class='form-control' id='medicalStaff' type='text'
						name='medicalStaff'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='contents' class='col-sm-2 col-form-label'>내용</label>
				<div class='col-sm-10'>
					<input class='form-control' id='contents' type='text'
						name='contents'>
				</div>
			</div>


			<div class='form-group row'>
				<label for='postalNo' class='col-sm-2 col-form-label'>우편번호</label>
				<div class='col-sm-10'>
					<input class='form-control' id='postalNo' type="number"
						name='postalNo'>
				</div>
			</div>


			<div class='form-group row'>
				<label for='primaryAddress' class='col-sm-2 col-form-label'>기본주소</label>
				<div class='col-sm-10'>
					<input class='form-control' id='primaryAddress' type='text'
						name='primaryAddress'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='detailAddress' class='col-sm-2 col-form-label'>상세주소</label>
				<div class='col-sm-10'>
					<input class='form-control' id='detailAddress' type='text'
						name='detailAddress'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='member.memberNo' class='col-sm-2 col-form-label'>병원회원번호</label>
				<div class='col-sm-10'>
					<input class='form-control' id='member.memberNo' type="number"
						name='member.memberNo'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='file1' class='col-sm-2 col-form-label'>사진</label>
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
