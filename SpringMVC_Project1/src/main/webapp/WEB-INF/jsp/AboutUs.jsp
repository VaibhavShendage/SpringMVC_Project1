<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us - Hospital Management System</title>
    <style>
   
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: green;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }

        .about-section {
            text-align: center;
            padding: 40px;
        }

        .about-section h2 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        .about-section p {
            font-size: 18px;
            line-height: 1.6;
        }

        .team-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 40px;
        }

        .team-member {
            flex: 0 0 calc(33.33% - 20px);
            margin: 10px;
            padding: 20px;
            background-color: #f1f1f1;
            border-radius: 5px;
            text-align: center;
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .team-member h3 {
            font-size: 20px;
            margin-bottom: 5px;
        }

        .team-member p {
            font-size: 16px;
        }
    </style>
</head>
<body>
   
    <header>
        <h1>Hospital Management System</h1>
    </header>
    <div class="container">
        <div class="about-section">
            <h2>About Us</h2>
            <p>Welcome to our Hospital Management System website. We are dedicated to providing innovative solutions for efficient hospital management, ensuring smooth operations and top-notch patient care.</p>
        </div>
        <div class="team-section">
            <div class="team-member">
              
                <img src="resources/Images/4.png" alt="Doctor 1">
                <h3>Dr.Deshmukh</h3>
                <p>Chief Medical Officer</p>
            </div>
            <div class="team-member">
                <img src="resources/Images/5.png" alt="Doctor 2">
                <h3>Dr. Patil </h3>
                <p>Head of Surgery</p>
            </div>
            <div class="team-member">
                <img src="resources/Images/6.png" alt="Doctor 3">
                <h3>Dr.Anuse</h3>
                <p>Multispecialist</p>
            </div>
            
             <div class="team-member">
                <img src="resources/Images/7.png" alt="Doctor 3">
                <h3>Dr.Kedar</h3>
                <p>PHD</p>
            </div>
              <div class="team-member">
                <img src="resources/Images/8.png" alt="Doctor 3">
                <h3>Dr.Bhosale</h3>
                <p>MBBS</p>
            </div>
        </div>
    </div>

</body>
</html>