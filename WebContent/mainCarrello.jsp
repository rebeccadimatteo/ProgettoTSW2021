<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carrello</title>
</head>
<body>

	<%
		Carrello car = (Carrello) session.getAttribute("Carrello");
		for (int i = 0; i < car.lengthCarrello(); i++) {
			Item el = car.getItemIndex(i);
	%>

	<p align="left">
		<img src="<%=el.getImg()%>" width="100" height="100"> <b><%=el.getNome()%></b>Prezzo:
		$
		<%=el.getPrezzo()%>
		Quantita':<%=el.getQuantita()%><br>
	</p>
	<%
		}
	%>
	<p align="center">
		Somma Totale: $<%=car.SommaPrezzo()%><br>
	</p>
	<div style="text-align: center">
		<form action="Fallito.html">
			<input type="submit" value="CHECKOUT"> <br>
		</form>
	</div>



</body>
</html>