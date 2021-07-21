<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id").toString();
    pDAO.deletePatient(id);
    
    response.sendRedirect("viewpatient.jsp");


%>