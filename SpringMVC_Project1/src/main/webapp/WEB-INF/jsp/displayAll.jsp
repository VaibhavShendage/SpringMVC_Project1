<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<style type="text/css">
        body{
        background-color: lightgreen;
        
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

table{
margin-left: 400px;
margin-top: 60px;
}

tr{
background-color: lightyellow;
}


</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   
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
  
  <h1 style="color: blue; text-align: center; ">Patient Details Data</h1>
<table border="1">
 <tr>
 <th>Id</th>
 <th>First name</th>
 <th>Surname</th>
 <th>Age</th>
 <th>Mobile</th>
 <th>Address</th>
 <th>Doctor</th>
 <th>Date</th>
 <th>Disease</th>
 <th>Action</th>
 </tr>
 <c:forEach var="emp" items="${empData }">
 
 <tr>
 <td>${emp.id }</td>
 <td>${emp.fname }</td>
 <td>${emp.sname }</td>
 <td>${emp.age }</td>
 <td>${emp.mob }</td>
 <td>${emp.adr }</td>
 <td>${emp.doctor }</td>
 <td>${emp.date }</td>
 <td>${emp.disease}</td>
 
 <td><a href="deleteForm?id=${emp.id }"><i class="material-icons" >delete</i></a>
 
<a href="updateForm?id=${emp.id } &fname=${emp.fname } &sname=${emp.sname } &age=${emp.age } &mob=${emp.mob }
 &adr=${emp.adr } &doctor=${emp.doctor } &date={emp.date } &disease=${emp.disease}"><i class="material-icons">edit</i></a>
</td>
  
 </tr>
 
 </c:forEach>
</table>

</body>
</html>