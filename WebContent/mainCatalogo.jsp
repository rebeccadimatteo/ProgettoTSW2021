<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catalogo</title>
</head>
<body>

	<%
		Catalogo prodotti = (Catalogo) request.getAttribute("Catalogo");
		for (int i = 0; i < prodotti.lengthCatalogo(); i++) {
			Item el = prodotti.getItemIndex(i);
	%>
	<p align="center">
		<b><%=el.getNome()%></b>
	</p>
	<p align="center">
		<img src="<%=el.getImg()%>" width="400" height="400">
	</p>
	<p align="center">
		Codice prodotto:
		<%=el.getCodice()%>
		<br> Prezzo: $
		<%=el.getPrezzo()%><br>
	</p>
	<br>
	<div style="text-align: center">
		<form action="ServletDettaglio" method="get">
			<input type="hidden" id="id" name="id" value="<%=el.getCodice()%>">
			<input type="submit" value="DETTAGLI"> <br>
		</form>
		<form action="ServletCarrello" method="get">
			<input type="hidden" id="id" name="id" value="<%=el.getCodice()%>">
			<input type="submit" value="AGGIUNGI AL CARRELLO"> <br>
		</form>
	</div>
	<%
		}
	%>
</body>
</html>