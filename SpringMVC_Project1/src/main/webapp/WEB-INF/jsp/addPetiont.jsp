<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">


        body {
            font-family: Arial, sans-serif;
            background-color:lightgreen;
          
        }

        h2 {
            text-align: center;
            margin-top: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            padding-right: 10px;
            
           
            
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"],
        input[type="email"],
        input[type="password"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            height: 7px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
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
<body style="background-image:"width: 90%; height:520px;padding-left: 120px;
 " alt="fgdgjfh" src="resources/Images/ReceptionHall.png">
 
    <nav >
    <div class="logo"> Vaibhav Hospital</div>
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

                

              <h2>Register Patient</h2>

<form action="register" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="fname" required>

    <label for="text">LastName:</label>
    <input type="text" id="text" name="sname" required>

    <label for="text">Age:</label>
    <input type="text" id="text" name="age" required>

  <label for="date">MobileNo:</label>
    <input type="text" id="date" name="mob" required>

      <label for="text">Address:</label>
    <input type="text" id="text" name="adr" required>
 
      <label for="doctor">Doctor:</label>
      <select id="doctor"id="text" name="doctor" required>
        <option value="" selected="selected">Select a Doctor</option>
       <c:forEach var="dr" items="${empDoctor }">
        <option value="${dr.id }">${dr.fname } ${dr.sname }</option>
        </c:forEach>
      </select>
  

    
      <label for="date">Preferred Date:</label>
      <input type="date" id="date" name="date" required>
    

  <label for="text">Disease:</label>
    <input type="text" id="text" name="disease" required>


    <input type="submit" value="Register">
</form>


</body>
</html>