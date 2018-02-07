<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<title>병원등록</title>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'> 
<link rel='stylesheet' href='../../css/common.css'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> 
<script src="https://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="../../summernote/summernote.css" rel="stylesheet">
<script src="../../summernote/summernote.js"></script>
<script src="../../summernote/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">
/* function postForm() {
    $('textarea[name="contents"]').val($('#summernote').summernote('code'));
    $('input[name="hospitalName"]').val($('#hospitalName2').hospitalName2('code'));
    $('input[name="openTime"]').val($('#openTime2').openTime2('code'));
    $('input[name="closeTime"]').val($('#closeTime2').closeTime2('code'));
    $('input[name="medicalSubject"]').val($('#medicalSubject2').medicalSubject2('code'));
    $('input[name="medicalAnimal"]').val($('#medicalAnimal2').medicalAnimal2('code'));
    $('input[name="hospitalTel"]').val($('#hospitalTel2').hospitalTel2('code'));
    $('input[name="medicalStaff"]').val($('#medicalStaff2').medicalStaff2('code'));
    $('input[name="postalNo"]').val($('#postalNo2').postalNo2('code'));
    $('input[name="primaryAddress"]').val($('#primaryAddress2').primaryAddress2('code'));
    $('input[name="detailAddress"]').val($('#detailAddress2').sdetailAddress2('code'));
    $('input[name="file"]').val($('#file2').file2('code'));
    console.log('값이 들어간다아아아아아아아아아')
} */
</script>

</head>
<body>
	<div class='container'>
		<jsp:include page="../header.jsp" />
		
		<h1>신규병원</h1>
		
		<form>
			<div class='form-group row'>
				<label for='hospitalName2' class='col-sm-2 col-form-label'>병원명</label>
				<div class='col-sm-10'>
					<input class='form-control' id='hospitalName2' type='text'
						name='hospitalName2'>
				</div>
			</div>
			<div class='form-group row'>
				<label for='openTime2' class='col-sm-2 col-form-label'>오픈시간</label>
				<div class='col-sm-10'>
					<input class='form-control' id='openTime2' type='time'
						name='openTime2'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='closeTime2' class='col-sm-2 col-form-label'>마감시간</label>
				<div class='col-sm-10'>
					<input class='form-control' id='closeTime2' type='time'
						name='closeTime2'>
				</div>
			</div>


			<div class='form-group row'>
				<label for='medicalSubject2' class='col-sm-2 col-form-label'>진료목록</label>
				<div class='col-sm-10'>
					<input class='form-control' id='medicalSubject2' type='text'
						name='medicalSubject2'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='medicalAnimal2' class='col-sm-2 col-form-label'>진료동물</label>
				<div class='col-sm-10'>
					<input class='form-control' id='medicalAnimal2' type='text'
						name='medicalAnimal2'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='hospitalTel2' class='col-sm-2 col-form-label'>병원전화번호</label>
				<div class='col-sm-10'>
					<input class='form-control' id='hospitalTel2' type='text'
						name='hospitalTel2'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='medicalStaff2' class='col-sm-2 col-form-label'>의료진</label>
				<div class='col-sm-10'>
					<input class='form-control' id='medicalStaff2' type='text'
						name='medicalStaff2'>
				</div>
			</div>
			
				<div class='form-group row'>
					<label for='contents2' class='col-sm-2 col-form-label'>내용</label>
					<div class='col-sm-10'>
					<div id="summernote" >Hello Summernote</div>
				</div>
				</div>
			
			
			<div class='form-group row'>
				<label for='postalNo2' class='col-sm-2 col-form-label'>우편번호</label>
				<div class='col-sm-10'>
					<input class='form-control' id='postalNo2' type="number"
						name='postalNo2'>
				</div>
			</div>


			<div class='form-group row'>
				<label for='primaryAddress2' class='col-sm-2 col-form-label'>기본주소</label>
				<div class='col-sm-10'>
					<input class='form-control' id='primaryAddress2' type='text'
						name='primaryAddress2'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='detailAddress2' class='col-sm-2 col-form-label'>상세주소</label>
				<div class='col-sm-10'>
					<input class='form-control' id='detailAddress2' type='text'
						name='detailAddress2'>
				</div>
			</div>

			<div class='form-group row'>
				<label for='file12' class='col-sm-2 col-form-label'>사진</label>
				<div class='col-sm-10'>
					<input type="file" class="form-control-file" id="file1" name="file2">
				</div>
			</div>

			<div class='form-group row'>
				<div class='col-sm-10'>
				<button id="datadispatch" class='btn btn-primary btn-sm'>등록</button>
				</div>
			</div>
		</form>
		
		<jsp:include page="../footer.jsp" />
	</div>

<!-- style="display: none; "-->

	<form action="add" id="postform" method='post' enctype="multipart/form-data" >
					<input class='form-control' placeholder="Enter ..."  id='hospitalName' type='text' name='hospitalName'>
					<input class='form-control' placeholder="Enter ..."  id='openTime' type='time' name='openTime'>
					<input class='form-control' placeholder="Enter ..."  id='closeTime' type='time' name='closeTime'>
					<input class='form-control' placeholder="Enter ..."  id='medicalSubject' type='text' name='medicalSubject'>
					<input class='form-control' placeholder="Enter ..."  id='medicalAnimal' type='text' name='medicalAnimal'>
					<input class='form-control' placeholder="Enter ..."  id='hospitalTel' type='text' name='hospitalTel'>
					<input class='form-control' placeholder="Enter ..."  id='medicalStaff' type='text' name='medicalStaff'>
					<textarea name="contents" id="contents" placeholder="Enter ..."  class="form-control"></textarea>
					<input class='form-control' id='postalNo' type="number" name='postalNo'>
					<input class='form-control' id='primaryAddress' type='text' name='primaryAddress'>
					<input class='form-control' id='detailAddress' type='text' name='detailAddress'>
					<input type="file" class="form-control-file" id="file1" name="file">
	</form>




			<script type="text/javascript">
  			$(document).ready(function() { $('#summernote').summernote(); });
  			
  			
  			document.querySelector('#datadispatch').addEventListener('click', function(event) {
  				event.preventDefault();
  				event.returnValue = false;
  				$('textarea[name="contents"]').val($('#summernote').summernote('code'));
  				$('input[name="hospitalName"]').val($('#hospitalName2').hospitalName2('value'));
  			    $('input[name="openTime"]').val($('#openTime2').openTime2('code'));
  			    $('input[name="closeTime"]').val($('#closeTime2').closeTime2('code'));
  			    $('input[name="medicalSubject"]').val($('#medicalSubject2').medicalSubject2('code'));
  			    $('input[name="medicalAnimal"]').val($('#medicalAnimal2').medicalAnimal2('code'));
  			    $('input[name="hospitalTel"]').val($('#hospitalTel2').hospitalTel2('code'));
  			    $('input[name="medicalStaff"]').val($('#medicalStaff2').medicalStaff2('code'));
  			    $('input[name="postalNo"]').val($('#postalNo2').postalNo2('code'));
  			    $('input[name="primaryAddress"]').val($('#primaryAddress2').primaryAddress2('code'));
  			    $('input[name="detailAddress"]').val($('#detailAddress2').sdetailAddress2('code'));
  			    $('input[name="file"]').val($('#file2').file2('code'));
  			
  			}
  			)

  			
			</script>
			
			<script type="text/javascript">
			function test(postform){
				document.formName.action = postform;                 // action으로 url을 지정
				document.formName.submit();                     //  submit()을 하면됨;;
				}
			</script>
			
		
</body>
</html>
