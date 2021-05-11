package model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Utente {

	public Utente(String id, String nome, String cognome, String cf, String email, String cellulare, String tipologia,
			int numeroordini, String pswd) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.cf = cf;
		this.email = email;
		this.cellulare = cellulare;
		this.tipologia = tipologia;
		this.numeroordini = numeroordini;
		this.pswd = pswd;
	}

	public boolean idpresente() {
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
			id = this.getId();

			String sql = "select * from Utente where ID='" + id + "'";
			PreparedStatement p2 = con.prepareStatement(sql);
			ResultSet rs = p2.executeQuery();
			boolean risposta = rs.next();

			if (!risposta) {

				System.out.println("Utente non trovato");
			} else {
				System.out.println("Utente trovatp");
			}
			return risposta;
		} catch (SQLException e) {
			System.out.println("Errore");

		}
		return false;

	}

	public void inserisceutente() {
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
			CallableStatement y = con.prepareCall("{call inserimentoUtente(?,?,?,?,?,?,?,?,?)}");
			y.setString(1, this.getId());
			y.setString(2, this.getNome());
			y.setString(3, this.getCognome());
			y.setString(4, this.getCf());
			y.setString(5, this.getEmail());
			y.setString(6, this.getCellulare());
			y.setString(7, this.getTipologia());
			y.setInt(8, this.getNumeroordini());
			y.setString(9, this.getPswd());
			y.executeQuery();

			System.out.println("INSERIMENTO ANDATO A BUON FINE !");
		} catch (SQLException e) {
			System.out.println("Errore");

		}

	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean newValid) {
		valid = newValid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getCf() {
		return cf;
	}

	public void setCf(String cf) {
		this.cf = cf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCellulare() {
		return cellulare;
	}

	public void setCellulare(String cellulare) {
		this.cellulare = cellulare;
	}

	public String getTipologia() {
		return tipologia;
	}

	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}

	public int getNumeroordini() {
		return numeroordini;
	}

	public void setNumeroordini(int numeroordini) {
		this.numeroordini = numeroordini;
	}

	public String getPswd() {
		return pswd;
	}

	public void setPswd(String pswd) {
		this.pswd = pswd;
	}

	private String id;
	private String nome;
	private String cognome;
	private String cf;
	private String email;
	private String cellulare;
	private String tipologia;
	private int numeroordini;
	private String pswd;
	private boolean valid;

}
