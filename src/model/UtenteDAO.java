package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UtenteDAO {

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

	public UtenteDAO() {

	}

	public boolean autentico(Utente a) {

		try {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			username = a.getId();
			password = a.getPswd();
			String sql = "select * from Utente where ID='" + username + "' AND Pwsd='" + password + "'";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();
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
