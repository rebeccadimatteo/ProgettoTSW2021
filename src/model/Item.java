package model;

// questa classe crea un oggetto di tipo prodotto
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Item {
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

	public Item(String codice, String n, String descrizione, double prezzo, double peso, String codicecategoria,
			String img, double q) {
		super();
		this.nome = n;
		this.codice = codice;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
		this.peso = peso;
		this.codicecategoria = codicecategoria;
		this.img = img;
		this.quantita = q;
	}

// get e set
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public String getCodicecategoria() {
		return codicecategoria;
	}

	public void setCodicecategoria(String codicecategoria) {
		this.codicecategoria = codicecategoria;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public double getQuantita() {
		return quantita;
	}

	public void setQuantita(double d) {
		this.quantita = d;
	}

	// Inserisce prodotto nel db
	public void inserisciprodotto() {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {

			String sql = "INSERT INTO Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,Image,Quantita) values (?,?,?,?,?,?,?,?)";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, codice);
			preparedStatement.setString(2, nome);
			preparedStatement.setString(3, descrizione);
			preparedStatement.setDouble(4, prezzo);
			preparedStatement.setDouble(5, peso);
			preparedStatement.setString(6, codicecategoria);
			preparedStatement.setString(7, img);
			preparedStatement.setDouble(8, quantita);

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
	// rimuove prodotto dal db

	public void rimuoviprodotto() {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {

			String sql = "delete * from Prodotto where Codice='" + codice + "'";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
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

	private String nome;
	private String codice;
	private String descrizione;
	private double prezzo;
	private double peso;
	private String codicecategoria;
	private String img;
	private double quantita;

}