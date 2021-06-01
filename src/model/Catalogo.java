package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Catalogo {

	private static DataSource ds;

	static {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");

			ds = (DataSource) envCtx.lookup("jdbc/storage");

		} catch (NamingException e) {
			System.out.println("Error:" + e.getMessage());
		}
	}

	public Catalogo() {

		try {

			Connection connection = null;
			PreparedStatement preparedStatement = null;

			String sql = "SELECT * FROM PRODOTTO";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				String codice = rs.getString(1);
				String nome = rs.getString(2);
				String descr = rs.getString(3);
				double prezzo = rs.getDouble(4);
				double peso = rs.getDouble(5);
				String codcatg = rs.getString(6);
				String image = rs.getString(7);
				double quantita = rs.getDouble(8);
				Item a = new

				Item(codice, nome, descr, prezzo, peso, codcatg, image, quantita);
				this.catalogo.add(a);

			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("errore");
		}

	}

	public Item getItemIndex(int i) {
		return catalogo.get(i);
	}

	public Item getItem(String cod) {
		Item nuovo;

		if (cod == null) {
			return null;
		}

		for (int i = 0; i < this.catalogo.size(); i++) {
			nuovo = this.catalogo.get(i);
			if (cod.equals(nuovo.getCodice())) {
				return (nuovo);
			}
		}

		return (null);
	}

	public ArrayList<Item> getCatalogo() {
		return catalogo;
	}

	public int lengthCatalogo() {
		return catalogo.size();
	}

	private ArrayList<Item> catalogo = new ArrayList<Item>();
}
