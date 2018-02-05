<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
    
<!-- 로그인 -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style> 
  
  <script type="text/javascript">
function postForm() {
    $('input[name="email"]').val($('#email2').email2('code'));
    $('input[name="password"]').val($('#password2').password2('code'));
    $('input[name="saveEmail"]').val($('#saveEmail2').saveEmail2('code'));
    console.log('값이 들어간다아아아아아아아아아')
    
}
</script>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-outline-dark btn-sm" id="button_sign">Login</button>

  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span>Login</h4>
        </div>
        
        <div class="modal-body" style="padding:40px 50px;">
        
          <form onsubmit="postForm()">
          
            <div class="form-group">
              <label for="email2"><span class="glyphicon glyphicon-user"></span>Email</label>
              <input class="form-control" id="email2" type="text" 
                     name='email2' value='${cookie.email.value}'placeholder="Enter email">
            </div>
            
            <div class="form-group">
              <label for="password2"><span class="glyphicon glyphicon-eye-open"></span>Password</label>
              <input class="form-control" id="password2" type="password" 
                     name='password2' placeholder="Enter password">
            </div>
            
            <div class="checkbox">
            <input type="checkbox" id="saveEmail2" name="saveEmail2" checked>
              <label>Remember me</label>
            </div>
            
              <!-- <a href="../auth/logingo" type="submit" class="btn btn-success btn-block" id="login_submit"> -->
              <button id="login_submit" class='btn btn-success btn-block'>Login</button>
              <!-- <span class="glyphicon glyphicon-off"></span>Login</a> -->
              
          </form>
          
        </div>
        
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
  
     <form action="logingo" id="postform" method='post' style="display: none;">
               <input class='form-control' id='email' type='text' name='email'>
               <input class='form-control' id=password type='text' name='password'>
               <input class='form-control' id='saveEmail' type='text' name='saveEmail'>
   </form>
   
<script>

$(document).ready(function(){
    $("#button_sign").click(function(){
        $("#myModal").modal().appendTo('body')
    });
});

var email = document.querySelector('#email')
var password = document.querySelector('#password')
var saveEmail = document.querySelector('#saveEmail')

login_submit.addEventListener('click', function(event) {
	email.textContent = this.textContent,
	password.textContent = this.textContent,
	saveEmail.textContent = this.textContent
})
</script>

<!-- 

$('#login_submit').click(function () {
	$.ajax({
		url: '../auth/logingo',
		type: 'put',
		dataType: 'text',
		data: {
			email = $('#email').val(),
			password = $('#password').val(),
			saveEmail = $('#saveEmail').val(),
		},
		success: function (data) {
			$('ddd').val(data);
		}
	});
});
 -->


<!-- 

   <form action="add" id="postform" method='post' enctype="multipart/form-data" style="display: none;">
               <input class='form-control' id='hospitalName' type='text' name='hospitalName'>
               <input class='form-control' id='openTime' type='time' name='openTime'>
               <input class='form-control' id='closeTime' type='time' name='closeTime'>
               <input class='form-control' id='medicalSubject' type='text' name='medicalSubject'>
               <input class='form-control' id='medicalAnimal' type='text' name='medicalAnimal'>
               <input class='form-control' id='hospitalTel' type='text' name='hospitalTel'>
               <input class='form-control' id='medicalStaff' type='text' name='medicalStaff'>
               <textarea name="contents" id="contents" placeholder="Enter ..."  class="form-control" style="display: none;"></textarea>
               <input class='form-control' id='postalNo' type="number" name='postalNo'>
               <input class='form-control' id='primaryAddress' type='text' name='primaryAddress'>
               <input class='form-control' id='detailAddress' type='text' name='detailAddress'>
               <input type="file" class="form-control-file" id="file1" name="file">
   </form>

         <script type="text/javascript">
           $(document).ready(function() { $('#summernote').summernote(); });
         </script>
         
         <script type="text/javascript">
         function test(postform){
            document.formName.action = postform;                 // action으로 url을 지정
            document.formName.submit();                     //  submit()을 하면됨;;
            }
         </script>
         
      
 -->
