package model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Utente {

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

	public Utente(String id, String nome, String cognome, String cf, String email, String cellulare, String tipologia,
			int numeroordini, String pswd, String via, String cap, String citta, String iban, String tipo,
			String nominativo) {
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
		this.via = via;
		this.cap = cap;
		this.citta = citta;
		this.iban = iban;
		this.tipo = tipo;
		this.nominativo = nominativo;
	}

	public boolean idpresente() {

		try {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			id = this.getId();

			String sql = "select * from Utente where ID='" + id + "'";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			boolean risposta = rs.next();

			if (!risposta) {

				System.out.println("Utente non trovato");
			} else {
				System.out.println("Utente trovato");
			}
			return risposta;
		} catch (SQLException e) {
			System.out.println("Errore");

		}
		return false;

	}

	public void inserisceutente() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {

			String sql = "INSERT INTO Utente(ID,Nome,Cognome,CF,Email,Cellulare,Tipologia,NumeroOrdini,Pwsd,Via,Cap,Citta) values (?,?,?,?,?,?,?,?,?,?,?,?)";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, nome);
			preparedStatement.setString(3, cognome);
			preparedStatement.setString(4, cf);
			preparedStatement.setString(5, email);
			preparedStatement.setString(6, cellulare);
			preparedStatement.setString(7, tipologia);
			preparedStatement.setInt(8, numeroordini);
			preparedStatement.setString(9, pswd);
			preparedStatement.setString(10, via);
			preparedStatement.setString(11, cap);
			preparedStatement.setString(12, citta);

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					try {
						preparedStatement.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			} finally {

				if (connection != null)
					try {
						connection.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
		}
	}

	public void inseriscimetodo() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {

			String sql = "INSERT INTO MetodoDiPagamento(Codice,Tipo,NominativoIntestatario) values (?,?,?)";

			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, iban);
			preparedStatement.setString(2, tipo);
			preparedStatement.setString(3, nominativo);

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {

				if (connection != null)
					try {
						connection.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
		}
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

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getIban() {
		return iban;
	}

	public void setIban(String iban) {
		this.iban = iban;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNominativo() {
		return nominativo;
	}

	public void setNominativo(String nominativo) {
		this.nominativo = nominativo;
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

	private String via;
	private String cap;
	private String citta;

	private String iban;
	private String tipo;
	private String nominativo;

}
