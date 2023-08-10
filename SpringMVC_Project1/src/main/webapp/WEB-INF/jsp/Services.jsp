<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">

/*  body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
} */

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

/* Reset some default styles */
body, h1, h2, h3, p, ul, li, form {
    margin: 0;
    padding: 0;
}

/* Basic styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
  
}

header, footer {
    background-color: lightgreen;
    color: white;
    text-align: center;
    padding: 1em 0;
}

main {
    padding: 2em;
}

.services-container {
    max-width: 800px;
    margin: 0 auto;
    background-color: white;
    padding: 2em;
    border-radius: 8px;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
}

h2, h3 {
    margin-bottom: 1em;
}

.services-list {
    list-style: none;
    margin-left: 0;
    padding-left: 1em;
}

.services-list li {
    margin-bottom: 2em;
    border-left: 4px solid #333;
    padding-left: 1em;
}

footer {
    margin-top: 2em;
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
 <header>
        <h1>Our Services</h1>
    </header>
    
    <main>
        <div class="services-container">
            <h2>Medical Services</h2>
            <ul class="services-list">
                <li>
                    <h3>Cardiology</h3>
                    <p>Comprehensive heart care, diagnostics, and treatment.</p>
                </li>
                <li>
                    <h3>Orthopedics</h3>
                    <p>Expert care for musculoskeletal conditions and injuries.</p>
                </li>
                <li>
                    <h3>Neurology</h3>
                    <p>Advanced treatments for neurological disorders.</p>
                </li>
                <li>
                    <h3>Gastroenterology</h3>
                    <p>Diagnosis and management of digestive system disorders.</p>
                </li>
                <!-- Add more services as needed -->
            </ul>
        </div>
    </main>
    
    <footer>
        <p>&copy; 2023 [Your Hospital Name]. All rights reserved.</p>
    </footer>

</body>
</html>