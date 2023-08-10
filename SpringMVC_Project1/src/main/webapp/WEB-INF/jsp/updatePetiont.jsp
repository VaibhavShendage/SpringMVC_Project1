<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body{
background-color: lightgreen;
}
div{
border:2px solid-red;
height: 440px;
width: 400px;
background-color:lightgrey;
padding-left: 100px;
border-radius: 25px;
margin-top: 50px;
}
button{
margin-left: 80px; 
padding-right: 60px;
 padding-left: 60px;
 background-color: lime;
}

form {
     margin-top: 100px;
    
}

   nav {
  background-color: green;
  color: #fff;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
 
}

.logo {
  font-size: 1.5rem;
}

.nav-links {
  list-style: none;
  display: flex;
  align-items: center;
}

.nav-links li {
  margin-right: 20px;
  position: relative;
}

.nav-links a {
  color: #fff;
  text-decoration: none;
  padding: 5px 10px;
}

.nav-links a:hover {
  background-color: #555;
}

.dropdown {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #444;
}

.nav-links li:hover .dropdown {
  display: block;
}

.dropdown li {
  padding: 10px;
}

.dropdown li a {
  color: #fff;
  text-decoration: none;
}

.dropdown li a:hover {
  background-color: #555;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <nav >
    <h1 class="logo"> Vaibhav Hospital</h1>
    <ul class="nav-links">
        <li>
        <a href="home">Home</a>
        
       </li>  
       <li>
       <a href="about">AboutUs</a>
        </li> 
      <li>
        <a href="#">Patients Appointment</a>
        <ul class="dropdown">
          <li><a href="registerForm">Register Patient</a></li>
          <li><a href="selectAll">View All Patients</a></li>
        </ul>
      </li>
      <li>
        <a href="#">Doctors</a>
        <ul class="dropdown">
          <li><a href="doctorAdd">Register Doctor </a></li>
          <li><a href="doctorAll">View All  Doctors</a></li>
        </ul>
      </li>
      <li><a href="service">Service</a></li>
      <li><a href="logout">LogOut</a></li>
    </ul>
  </nav>
  
<form action="update" method="post">

                  <div style="margin-left: 350px;">
                  
                  <h2 style="color:green;text-align: centre;">Update Petiont</h2>
                  
                    <label>ID:</label>
                    <input type="text"  name="id" value="${param.id }" /><br><br>
                     
                   <label>FirstName:</label>
                    <input type="text"  name="fname" value="${param.fname }" /><br><br>
                    
                     <label>SurName:</label>
                    <input type="text"  name="sname" value="${param.sname }" /><br><br>
                    
                     <label>Age:</label>
                    <input type="text"  name="age" value="${param.age }" /><br><br>
                    
                     <label>MobileNo:</label>
                    <input type="text"  name="mob" value="${param.mob }" /><br><br>
                    
                     <label>Address:</label>
                    <input type="text"  name="adr" value="${param.adr }" /><br><br>
                    
			    
			      <label for="doctor">Doctor:</label>
			      <select id="doctor" name="doctor" value="${param.doctor }">
			        <option value="">Select a Doctor</option>
        <option value="Dr. 1">Vaibhav Shendage</option>
        <option value="Dr. 2">Aniket Deshmukh</option>
        <option value="Dr. 3">Akash Anuse</option>
        <option value="Dr. 4">Akshay Kumar</option>
        <option value="Dr. 5">Dipak Khadtare</option>
			        <!-- Add more doctors here -->
			      </select>
			   <br><br>
			
			    
			      <label for="date">Preferred Date:</label>
			      <input type="date" id="date" name="date" value="${param.date }">
			    <br><br>
			                    
                    <label>Disease:</label>
                    <input type="text"  name="disease" value="${param.disease }"/><br><br>
               
                    <button type="submit">update</button>
                   
                  </div>
                  
            
</form>


</body>
</html>