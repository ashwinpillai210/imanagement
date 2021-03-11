<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

 body {
        background-image: url("https://mdbootstrap.com/img/new/fluid/city/018.jpg");
        height: 100vh;
      }
   .container{
           background-image: url("https://mdbootstrap.com/img/new/fluid/city/018.jpg");
        height: 100vh;
      }
      
      .userForm{
      background-color: aliceblue;
      }
      </style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script type = "text/javascript">
         $(document).ready(function () {
             var user = {};
             $('#submit').click(function () {
                 user.salutation = $('#salutation').val();
                 user.firstName = $('#firstName').val();
                 user.lastName=$('#lastName').val()
                 user.gender = $('#gender').val();
                 user.mobile = $('#mobile').val();
                 user.address = $('#address').val();
                 user.email = $('#email').val();
                 user.role = $('#role').val();
                 user.status = $('#status').val();
                 
                 var userJSON = JSON.stringify(user);
                 $.ajax({
                     url: 'http://localhost:8082/users',
                     method:'POST',
                     data: userJSON,
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     success: function () {
                         alert('Saved successfully!');
                     },
                     error: function (error) {
                         alert(error);
                     }
                 })  
             })
         });
         (function () {
        	  'use strict'

        	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
        	  window.addEventListner('load',function(){
        	  var forms = document.getElementByClassName('needs-validation');

        	  // Loop over them and prevent submission
        	  var validation=Array.prototype.filter.call(forms,function(forms) {
        	      forms.addEventListener('submit', function (event) {
        	        if (forms.checkValidity()==false) {
        	          event.preventDefault();
        	          event.stopPropagation();
        	        }

        	        form.classList.add('was-validated');
        	      }, false);
        	    })
        	},false);
        	})();
      </script>
</head>
<body>
 <div class="container" id="container">
  
  <div class="card">
   <div class="card-body" style="background-color: lavender;">
     <h1>User Registration Form:</h1>
    <form id="userForm" class="needs-validation" novalidate> 
    <div class="form-group row">
      <label for="Salutation" class="col-sm-2 col-form-label">Salutation</label>
      <div class="col-sm-7">
       <select class="form-select" aria-label="Default select example" id="salutation" required>
  			<option selected>--select--</option>
  			<option value="Mr">Mr</option>
  			<option value="Ms">Ms</option>
  			<option value="Mrs">Mrs</option>
			</select>
			<div class="invalid-feedback">
        		Salutation is required
      		</div>
      </div>
     </div>
     <div class="form-group row">
      <label for="firstName" class="col-sm-2 col-form-label">First
       Name</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="firstName"
        placeholder="Enter first name" id="firstName" required>
        <div class="invalid-feedback">
        		first name is required
      		</div>
      </div>
     </div>

     <div class="form-group row">
      <label for="lastName" class="col-sm-2 col-form-label">Last
       Name</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="lastName"
        placeholder="Enter last name" id="lastName" required>
        <div class="invalid-feedback">
        		Last Name is required
      		</div>
      </div>
     </div>
     
     <div class="form-group row">
      <label for="gender" class="col-sm-2 col-form-label">Gender</label>
      <div class="col-sm-7">
       <select class="form-select" aria-label="--select--" id="gender" required>
  			<option selected>--select--</option>
  			<option value="male">male</option>
  			<option value="female">female</option>
  			<option value="Rather not say">Rather not say</option>
			</select>
			<div class="invalid-feedback">
        		Gender is required
      		</div>
      </div>
     </div>
     
     <div class="form-group row">
      <label for="role" class="col-sm-2 col-form-label">Role</label>
      <div class="col-sm-7">
       <select class="form-select" aria-label="--select--" id="role" required>
  			<option selected>--select--</option>
  			<option value="superadmin">superadmin</option>
  			<option value="admin">Admin</option>
			</select>
			
			<div class="invalid-feedback">
        		Role is required
      		</div>
      </div>
     </div>
     
     <div class="form-group row">
      <label for="status" class="col-sm-2 col-form-label">Status</label>
      <div class="col-sm-7">
       <select class="form-select" aria-label="--select--" id="status" required>
  			<option selected>--select--</option>
  			<option value="Accepted">accepted</option>
  			<option value="Rejected">Rejected</option>
			</select>
			<div class="invalid-feedback">
        		Status is required
      		</div>
      </div>
     </div>

     <div class="form-group row">
      <label for="mobile" class="col-sm-2 col-form-label">Mobile Number</label>
      <div class="col-sm-7">
       <input type="tel" class="form-control" name="mobile" id="mobile"
        placeholder="Enter Mobile number" required>
        <div class="invalid-feedback">
        		Mobile number is required
      		</div>
      </div>
     </div>
     
      <div class="form-group row">
      <label for="email" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-7">
       <input type="email" class="form-control" name="email" id="email"
        placeholder="Enter email address" required>  
        <div class="invalid-feedback">
        		Email is required
      		</div>
      </div>
     </div>

     <div class="form-group row">
      <label for="address" class="col-sm-2 col-form-label">Address</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="address" id="address"
        placeholder="Enter Address" required>
           <div class="invalid-feedback">
        		Address is required
      		</div>
      </div>
     </div>
     <button type="submit" class="btn btn-primary" id="submit">Submit</button>
    </form>
   </div>
  </div>
 </div>
</body>
</html>