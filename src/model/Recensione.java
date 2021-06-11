package model;

// crea un oggetto recensione
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Recensione {

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

	public Recensione() {

	}

	

	public Recensione(int num, String descrizione, String idutente, String nomeprodotto) {
		super();
		this.num = num;
		this.descrizione = descrizione;
		this.idutente = idutente;
		this.nomeprodotto = nomeprodotto;
	}
	



	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public String getDescrizione() {
		return descrizione;
	}



	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}



	public String getIdutente() {
		return idutente;
	}



	public void setIdutente(String idutente) {
		this.idutente = idutente;
	}



	public String getNomeprodotto() {
		return nomeprodotto;
	}



	public void setNomeprodotto(String nomeprodotto) {
		this.nomeprodotto = nomeprodotto;
	}



	// restituisce totale recensioni nel db
	public ArrayList<Recensione> totrecensioni() {
		ArrayList<Recensione> fin = new ArrayList<Recensione>();

		try {

			Connection connection = null;
			PreparedStatement preparedStatement = null;

			String sql = "SELECT * FROM RECENSIONE";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int num = rs.getInt(1);

				String descr = rs.getString(2);

				String idut = rs.getString(3);
				String nomp = rs.getString(4);

				Recensione a = new

				Recensione(num, descr, idut,nomp);
				fin.add(a);

			}
		} catch (SQLException e) {
			System.out.println("errore");
		}
		return fin;
	}

	// inserisce recensione nel db
	public void inseriscirecensione() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			String sql = "INSERT INTO Recensione(Num,Descrizione,IDUtente,NomeProdotto) values (?,?,?,?)";

			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, num);
			preparedStatement.setString(2, descrizione);
			preparedStatement.setString(3, idutente);
			preparedStatement.setString(4, nomeprodotto);
			System.out.println(preparedStatement);
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

	private int num;
	private String descrizione;
	private String idutente;
	private String nomeprodotto;

}
