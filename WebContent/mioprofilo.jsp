<%@ page import="model.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ordine totale</title>
</head>
<body>
	<table width="75%" border="1">
		<tr>
			<th style="width: 25%">Codice</th>
			<th style="width: 25%">Nome</th>
			<th style="width: 25%">Descrizione</th>
			<th style="width: 25%">Prezzo</th>
			<th style="width: 25%">Peso</th>
			<th style="width: 25%">Quantita'</th>
		</tr>

		<%
			double pesotot = 0;
			double prezzotot = 0;
			Carrello car = (Carrello) session.getAttribute("Carrello");
			for (int i = 0; i < car.lengthCarrello(); i++) {
				Item el = car.getItemIndex(i);
				pesotot = pesotot + el.getPeso();
				prezzotot = prezzotot + el.getPrezzo();
		%>

		<%
			
		%>
		<tr>
			<td><%=el.getCodice()%> &nbsp;</td>
			<td><%=el.getNome()%> &nbsp;</td>
			<td><%=el.getDescrizione()%>&nbsp;</td>
			<td><%=el.getPrezzo()%> &nbsp;</td>
			<td><%=el.getPeso()%> &nbsp;</td>
			<td><%=el.getQuantita()%>&nbsp;</td>


		</tr>

		<%
			}
		%>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>


	<form action="ServletCarrello" method="post">
		<p align="center">
			Peso totale:
			<%=pesotot%>
			kg <br> Prezzo totale: $
			<%=prezzotot%><br> <input type="submit" value="Acquista">
			<br> <input type="hidden" name="azione" value="Acquista">



		</p>
	</form>




</body>
</html>