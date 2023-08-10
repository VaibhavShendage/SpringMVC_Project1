<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 
    <title></title>
    
    <style type="text/css">
  body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
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


/* Sidebar Styles */
.sidebar {
  background-color: lightgrey;
  color: #FFF;
  height: 100vh;
  width: 150px;
  position: fixed;
  top: 50;
  left: 0;
  padding-top: 100px;
}

.sidebar-nav {
  list-style: none;
  padding: 0;
  margin: 0;
}

.sidebar-nav li {
  margin-bottom: 15px;
}

.sidebar-nav li a {
  color: blue;
  text-decoration: none;
  display: block;
  padding: 10px;
}

.sidebar-nav li a:hover {
  background-color: white;
}


body {
  margin: 0;
  padding: 0;
}

.slider {
  width: 100%;
  max-width: 800px; /* Adjust the maximum width as needed */
  margin: auto;
  overflow: hidden;
  position: relative;
}

.slides {
  display: flex;
  transition: transform 1s ease;
}

.slide {
  flex: 0 0 100%;
  height: 400px; /* Adjust the height as needed */
  background-size: cover;
  background-position: center;
}

/* Optional: Add navigation buttons */
.slider-nav {
  position: absolute;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
}

.slider-nav label {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background-color: #ccc;
  margin: 0 6px;
  cursor: pointer;
}


    </style>
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

 <!--  <aside class="sidebar">
    <ul class="sidebar-nav">
       <li><a >Home</a></li>
      <li><a href="about">AboutUs</a></li>
      <li><a href="contact">Contact</a></li>
      <li><a href="service">Service</a></li>
        </ul>
  </aside> -->

  <img  style="width: 100%; height:520px; " alt="fgdgjfh" src="resources/Images/2.png">

  

</body>
</html>






 