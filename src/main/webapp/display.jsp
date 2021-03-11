<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
      </script>

<title>User Details</title>
</head>
<body>
	<form action="users" method="post">
		Enter your First name and Last name : <input type="text" id="salutation">   
		<input type="text" id="firstName">    
		<input type="text" id="lastName"><br>
		Gender : <input type="text" id="gender"><br>
		Mobile : <input type="tel" id="mobile"><br>
		Email : <input type="email" id="email"><br>
		Address : <input type="text" id="address"><br>
		Role : <input type="text" id="role"><br>
		Status : <input type="text" id="status"><br>
		<input type="submit" id="submit" value="Add"><br><br><br><br>
		<a href="update.jsp">Update</a>
	</form>
	<!-- <form action="updateUser/mobile">
		Enter your First name and Last name : <input type="text" name="salutation">   <input type="text" name="fname">    <input type="text" name="lname"><br>
		Gender : <input type="text" name="gender"><br>
		Mobile : <input type="tel" name="mobile"><br>
		Email : <input type="email" name="email"><br>
		Address : <input type="text" name="address"><br>
		Role : <input type="text" name="role"><br>
		Status : <input type="text" name="status"><br>
		<input type="submit" value="UPDATE">
	</form> -->
</body>
</html>