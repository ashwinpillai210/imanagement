<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
    
    function updateUser(){ 
    const user={};
    user.id=document.getElemtById("id");
    user.salutation=document.getElemtById("salutation");
    user.firstName=document.getElemtById("firstName");
    user.lastName=document.getElemtById("lastName");
    user.gender=document.getElemtById("gender");
    user.mobile=document.getElemtById("mobile");
    user.email=document.getElemtById("email");
    user.address=document.getElemtById("address");
    user.role=document.getElemtById("role");
    user.status=document.getElemtById("status");
    
      const res= await axios.put('http://localhost:8082/users', users);
        .get("https://jsonplaceholder.typicode.com/users")
        .then(response => {
          console.log(response.data);
        })
        .catch(error => alert(error));}
    
   
    </script>
<meta charset="ISO-8859-1">
<title>


update form</title>
</head>
<body>
	
		<form>
		Enter User Id: <input type="number" id="id">
		Enter your First name and Last name : <input type="text" id="salutation">   
		<input type="text" id="firstName">    
		<input type="text" id="lastName"><br>
		Gender : <input type="text" id="gender"><br>
		Mobile : <input type="tel" id="mobile"><br>
		Email : <input type="email" id="email"><br>
		Address : <input type="text" id="address"><br>
		Role : <input type="text" id="role"><br>
		Status : <input type="text" id="status"><br>
		<input type="submit" id="submit" value="Add"  onClick="updateUser()"></form><br><br><br><br>
</body>
</html>