<%-- 
    Document   : session
    Created on : 22 Oct, 2018, 3:57:07 PM
    Author     : shravan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
     if (session.getAttribute("username") == null) {  
        response.sendRedirect("../login.html");
     }
  %>
