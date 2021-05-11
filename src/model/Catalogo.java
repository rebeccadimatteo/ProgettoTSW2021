package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Catalogo {

	public Catalogo() {

		Connection con = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dbprogettotsw?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=CET";
			String username = "root";
			String pwd = "Becca123*";
			con = DriverManager.getConnection(url, username, pwd);

		}

		catch (SQLException e) {
			System.out.println(e.getErrorCode());
			System.out.println(e.getMessage());

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		try {
			String sql = "SELECT * FROM PRODOTTO";
			PreparedStatement p2 = con.prepareStatement(sql);
			ResultSet rs = p2.executeQuery();

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
