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
		Carrello car = (Carrello) request.getSession().getAttribute("car");
		if (car.lengthCarrello() == 0) {
	%>
	<p align="center">Carrello vuoto
	<form action="ServletDati">
		<p align="center">
			Carrello vuoto <input type="submit" value="Ritorna al Catalogo">
			<br>
		</p>
	</form>

	<%
		}

		else {
			for (Item el : car.getProdotti()) {
	%>

	<p align="left">
		<img src="<%=el.getImg()%>" width="100" height="100"> <b><%=el.getNome()%></b>Prezzo:
		$
		<%=el.getPrezzo()%>
		Quantita':<%=el.getQuantita()%>
		
	</p>
	<%
		}
	%>
	<p align="center">
		Somma Totale: $<%=car.SommaPrezzo()%><br>
	</p>
	<div style="text-align: center">
		<form action="ServletOrdine">

			<input type="submit" value="CHECKOUT"> <br>
		</form>
	</div>

	<%
		}
	%>

</body>
</html>