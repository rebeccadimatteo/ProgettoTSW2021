package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UtenteDAO {

	public UtenteDAO() {

	}

	public boolean autentico(Utente a) {
		Connection con = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dbprogettotsw?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=CET";
			String username = "root";
			String pwd = "Becca123*";
			con = DriverManager.getConnection(url, username, pwd);

		} catch (SQLException ex) {
			System.out.println(ex.getErrorCode());
			System.out.println(ex.getMessage());

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			username = a.getId();
			password = a.getPswd();
			String sql = "select * from Utente where ID='" + username + "' AND Pwsd='" + password + "'";
			PreparedStatement p2 = con.prepareStatement(sql);
			ResultSet rs = p2.executeQuery();
			boolean risposta = rs.next();

			if (!risposta) {

				System.out.println("Utente non è autentificato");
			} else {
				System.out.println("Utente è autentificato");
			}
			return risposta;
		} catch (SQLException e) {
			System.out.println("Errore");

		}
		return false;

	}

	private String username;
	private String password;

}
