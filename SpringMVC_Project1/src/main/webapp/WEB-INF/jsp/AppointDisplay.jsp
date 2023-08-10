<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
        
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
    <div class="logo"> Vaibhav Hospital</div>
    <ul class="nav-links">
     <li>
        <a href="#">Patients</a> 
      <li>
        <a href="home">Patients</a></li>
        <ul class="dropdown">
          <li><a href="registerForm">Register Patient</a></li>
      <!--     <li><a href="updateForm">Update Patient</a></li> -->
          <li><a href="selectAll">View All Patients</a></li>
        </ul>
      </li>
      <li>
        <a href="#">Doctors</a>
        <ul class="dropdown">
          <li><a href="doctorAdd">Register Doctor </a></li>
         <!--   <li><a href="#">Update Doctors Detail </a></li> -->
          <li><a href="doctorAll">View All  Doctors</a></li>
        </ul>
      </li>
       <li>
        <a href="#">Appointments</a>
        <ul class="dropdown">
          <li><a href="#">Add Appointments </a></li>
          <li><a href="#">View All Appointments</a></li>
        </ul>
      </li>
      <li>
        <a href="#"> Patients Bill</a>
        <ul class="dropdown">
          <li><a href="#">Add patients Bill </a></li>
          <li><a href="#">View All </a></li>
        </ul>
      </li>
           <li>
        <a href="#"> Staff Management</a>
        <ul class="dropdown">
          <li><a href="#">Add New Staff </a></li>
          <li><a href="#">View All Staffs </a></li>
        </ul>
      </li>
     
      <!-- 
      <li><a href="#">Hospital Room</a></li> -->
    </ul>
  </nav>
<table border="1">
 <tr>
 <th>Id</th>
 <th>First name</th>
 <th>Surname</th>
 <th>MobileNo</th>
 <th>Doctor</th>
 <th>Date</th>

 </tr>
 <c:forEach var="app" items="${empAppoint }">
 
 <tr>
 <td>${app.id }</td>
 <td>${app.fname }</td>
 <td>${app.sname }</td>
 <td>${app.mob }</td>
 <td>${app.doctor }</td>
 <td>${app.date }</td>
 
  
 </tr>
 
 </c:forEach>
</table>

</body>
</html>