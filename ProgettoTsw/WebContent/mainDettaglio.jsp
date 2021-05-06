<%@ page import="model.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dettaglio del Prodotto</title>
</head>
<body>

		<% Item prodotto=(Item)request.getAttribute("Prodotto"); %>
		<p align="center"><b><%= prodotto.getNome()  %></b> </p>
        <p align="center"><img src="<%= prodotto.getImg() %>" width="400" height="400"></p>
        <p align="center"> Descrizione Prodotto: <%= prodotto.getDescrizione()  %> <br> Peso Prodotto: <%= prodotto.getPeso()%><br></p><br>
        <p align="center"> Codice Prodotto: <%= prodotto.getCodice()  %> <br> Prezzo: $<%= prodotto.getPrezzo()%><br></p><br>
		
		<div style="text-align:center">
			<form action="ServletCarrello" method="get">
			<input type="hidden" id="id" name="id" value="<%= prodotto.getCodice() %>">
			<input type="submit" value="AGGIUNGI AL CARRELLO" >
			<br>	
			</form>
		</div>
</body>
</html>