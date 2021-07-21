
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset=UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <nav class="navbar navbar-expand md" style="background-color: #570061">
           <a class="navbar-brand" href="#" style="color: orange">Hospital Management System</a>
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="=#collapsibleNavbar">
               <span class="navbar-toggler-icon"></span>
           </button>
           
           <div class="collapse navbar-collapse" id="collapsibleNavbar">
               
               <ul class="navbar-nav">
                   <li class="nav-item">
                       <a class="nav-link" href="adminhome.jsp" style="color:white">Home</a>
                   </li>
                   
                   <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white">
                           Doctor
                       </a>
                       <div class="dropdown-menu">
                           <a class="dropdown-item" href="adddoctor.jsp">Add Doctor</a>
                           <a class="dropdown-item" href="viewdoctor.jsp">View Doctor</a>
                       </div>
                   </li>
                   
                   <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white">
                           Patient
                       </a>
                       <div class="dropdown-menu">
                           <a class="dropdown-item" href="addpatient.jsp">Add Patient</a>
                           <a class="dropdown-item" href="viewpatient.jsp">View Patient</a>
                       </div>
                   </li>
                   
                   <li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: white">
                           Appointments
                       </a>
                       <div class="dropdown-menu">
                           <a class="dropdown-item" href="addappointment.jsp">Add Appointment</a>
                           <a class="dropdown-item" href="viewappointment.jsp">View Appointment</a>
                       </div>
                   </li>
                   
                   <li class="nav-item">
                       <a class="nav-link" href="logout.jsp" style="color:white">Log out</a>
                   </li>
                   
               </ul>
               
           </div>
        </nav>
    </body>
</html>
