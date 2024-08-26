
# Hospital Management System

## Project Overview

This Hospital Management System is a JavaEE-based web application developed as a group project during my 2nd year at university. The system is designed to streamline hospital operations by managing doctor, patient, and appointment information. It includes modules for admin management, user roles, and appointment scheduling.

## Key Features

- **Admin Module**: Admins can manage users, doctors, patients, and appointments.
- **Doctor Management**: Handles doctor registration, specialization, and availability.
- **Patient Management**: Manages patient profiles, including personal and medical information.
- **Appointment Scheduling**: Allows patients to book appointments with available doctors.

## Technologies Used

- **JavaEE (JSP, Servlets)**
- **MySQL for Database Management**
- **HTML, CSS, JavaScript for Frontend**

## Project Structure and Code Explanation

1. **Admin Management**:
   - Admins can log in, view all users, manage doctor profiles, and review appointments.
   ```java
   public class AdminLoginServlet extends HttpServlet {
       protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           // Login logic for admin
       }
   }
   ```

2. **Doctor and Patient Management**:
   - The system provides interfaces to manage doctor and patient profiles.
   ```jsp
   <form action="addDoctor" method="post">
       <input type="text" name="doctorName" placeholder="Enter Doctor's Name" />
       <input type="submit" value="Add Doctor" />
   </form>
   ```

3. **Appointment Scheduling**:
   - Patients can book appointments by selecting an available doctor and time slot.
   ```java
   public class AppointmentServlet extends HttpServlet {
       protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           // Fetch available doctors and time slots
       }
   }
   ```

## Project Output

Here are some screenshots showing the key features and output of the application:

<h4>01) Admin Login</h4>

<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/a1.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/a2.png" width="50%" >

<h4>02) Users</h4>
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/u1.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/u2.png" width="50%" >


<h4>03) Home</h4>
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/h1.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/h2.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/h3.png" width="50%" >

<h4>04) Doctor</h4>
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/d1.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/d2.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/d4.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/d5.png" width="50%" >

<h4>05) Patient</h4>
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/p1.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/p2.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/p3.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/p4.png" width="50%" >

<h4>06) Appointment</h4>
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/aa1.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/aa2.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/aa3.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/aa4.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/aa5.png" width="50%" >
<img src="https://github.com/MalingaBandara/HospitalManagement/blob/main/Screenshots/aa6.png" width="50%" >

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/MalingaBandara/HospitalManagement.git
   ```
2. Set up MySQL with the provided database schema.
3. Deploy the project on a servlet container like Apache Tomcat.
4. Access the application via `http://localhost:8080/HospitalManagement`.

## Purpose and Future Enhancements

This project was developed to gain practical experience in building web applications using JavaEE. Future enhancements could include improving the UI, integrating advanced security features, and expanding appointment scheduling options.

## License

This project is licensed under the MIT License.
