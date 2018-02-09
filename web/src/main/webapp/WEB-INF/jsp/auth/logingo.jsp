
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
    
<!-- 로그인 -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color: white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style> 
  
  <!-- Trigger the modal with a button -->
  <button id="loginModalBtn" type="button" class="btn btn-outline-dark btn-sm">Login</button>

  <div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span>Login</h4>
        </div>
        
        <div class="modal-body" style="padding:40px 50px;">
        
          <form id="modalForm">
          
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-user"></span>Email</label>
              <input id="email" class="form-control" type="text" 
                     name='email' value='${cookie.email.value}'placeholder="Enter email">
            </div>
            
            <div class="form-group">
              <label for="password"><span class="glyphicon glyphicon-eye-open"></span>Password</label>
              <input id="password" class="form-control" type="password" 
                     name='password' placeholder="Enter password">
            </div>
            
            <div class="checkbox">
            <input id="saveEmail" type="checkbox" name="saveEmail" checked>
              <label>Remember me</label>
            </div>
            
               <button id="loginBtn" type="button" class='btn btn-success btn-default btn-block' data-dismiss="modal"><span class="glyphicon glyphicon-remove">Login</span></button>
              
          </form>
          
        </div>
        
        <div class="modal-footer">
          <button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
  
<script>

var email = $('#email'),
    password = $('#password'),
    saveEmail = $('#saveEmail'),
    loginModalBtn = $('#loginModalBtn'),
    myModal = $('#myModal'),
    modalForm = $('#modalForm'),
    loginBtn = $('#loginBtn'),
    emailItem = $('#email'),
    passwordItem = $('#password'),
    saveEmailItem = $('#saveEmail'),
    body = $('#body');

$('#loginModalBtn').click(function(){
    $("#myModal").modal().appendTo('body')
});
    
loginBtn.click(() => {
    var formData = new FormData($("#modalForm")[0]);
    $.ajax('../auth/login', {
        data: formData,
        dataType: 'json',
        method: 'POST',
        processData : false,
        contentType : false,
        success: (result) => {
        location.href = "../main/start";
        }
        /* error: (jqXHR, textStatus, errorThrown) => {
            window.alert('서버 실행 오류!');
        } */
    });
});

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

