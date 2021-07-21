<%-- 
    Document   : logout
    Created on : Apr 15, 2021, 3:27:53 PM
    Author     : Sajeev Rajkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="mypackage.DataBaseClass" scope="page" />

<%
    session.setAttribute("userStatus","0");
    session.removeAttribute("username");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>