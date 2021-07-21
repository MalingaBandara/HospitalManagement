
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp" />
    </head>
    <body>
        <jsp:include page="navigationbar2.jsp" /> 
        <div class="container" style="margin-top:50px">
            <h1 class="text-center" style="color: #E6120E">View Patient</h1>
            
            <%
            ResultSet rs = pDAO.viewPatient(); 
            %>
            
            <table class="table table-hover">
                <thead style="background-color: green; color: white;">
                    <tr>
                        <th>Patient ID</th>
                        <th>Patient Name</th>
                        <th>Address</th>
                        <th>Gender</th>
                        <th>Contact</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody class="table-warning">
                    <%
                    while(rs.next())
                    {
                      %>
                      <tr>
                          <td><%=rs.getString(1) %></td>
                          <td><%=rs.getString(2) %></td>
                          <td><%=rs.getString(3) %></td>
                          <td><%=rs.getString(4) %></td>
                          <td><%=rs.getString(5) %></td>
                          <td><a style="font-size: 10pt " href="deletepatient.jsp?id=<%=rs.getString(1) %>" class="btn btn-primary" onclick="return confirm('Are you sure?')">Delete</a></td>
                      </tr>
                      <%
                    }
                       %>
                </tbody>
            </table>
            
            
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
