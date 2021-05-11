<%@ page import="model.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Benvenuto</title>
</head>
<body>
 
<% Utente u=(Utente)request.getAttribute("utente"); %>
 <p align="center"> Benvenuto :<b><%=  u.getId()  %></b> </p>

</body>
</html>