

<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <jsp:include page="navigationbar2.jsp" /> 
        
        <div class="container" style="margin-top:50px">
            <h1 class="text-center" style="color: #E6120E">Add Appointment</h1>
            
            <%
                ResultSet rs1 = pDAO.viewDoctor();
            
            %>
            
            <%
                ResultSet rs2 = pDAO.viewPatient();
            
            %>
            
            
            <form action="mycontroller.jsp" method="post">
                <input type="hidden" name="page" value="addappointment">
                <div class="form-group">
                    <label>Doctor Name</label>
                    <select name="doctor" class="form-control">
                        <%
                            while(rs1.next())
                            {
                                %>
                                <option value="<%= rs1.getString(2)%>"><%= rs1.getString(2)%> [Doctor ID - <%= rs1.getString(1)%>]</option>
                                <%
                            
                             } 
                        
                         %>
                    </select>
                    
                    <label>Patient Name</label>
                    <select name="patient" class="form-control">
                        <%
                            while(rs2.next())
                            {
                                %>
                               <option value="<%= rs2.getString(2)%>"><%= rs2.getString(2)%> [Patient ID - <%= rs2.getString(1)%>]</option>
                                <%
                            
                             } 
                        
                         %>
                    </select>
                    
                                       
                    <label>Date</label>
                    <input type="date" name="date" class="form-control"> 
                    
                    <label>Time</label>
                    <input type ="time" name="time" class="form-control">
                    <br>
                    <input type ="submit" class="btn btn-primary" name="save" value="Save" style="width:150px">
                </div>
            </form>
            
        </div>
        
        
     <script type="text/javascript">
    (function(d, m){
        var kommunicateSettings = 
            {"appId":"298e61e0d875f49d243df2749c488db36","popupWidget":true,"automaticChatOpenOnNavigation":true};
        var s = document.createElement("script"); s.type = "text/javascript"; s.async = true;
        s.src = "https://widget.kommunicate.io/v2/kommunicate.app";
        var h = document.getElementsByTagName("head")[0]; h.appendChild(s);
        window.kommunicate = m; m._globals = kommunicateSettings;
    })(document, window.kommunicate || {});
/* NOTE : Use web server to view HTML files as real-time update will not work if you directly open the HTML file in the browser. */
</script>    
    </body>
</html>
