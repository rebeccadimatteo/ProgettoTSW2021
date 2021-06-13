package model;

// crea un oggetto di tipo ordine
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Random;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Ordine {

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

	public Ordine(int numeroordine, String stato, Date dataord, String idutente, String via, String cap, String citta,
			int idspecificaordine) {
		super();
		Random n = new Random();

		LocalDate dataoggi = LocalDate.now();

		int d = 1 + n.nextInt(100000) + 1;
		this.numeroordine = d;
		this.stato = "Ordinato";
		this.dataordine = dataoggi;
		this.idutente = idutente;
		this.via = via;
		this.cap = cap;
		this.citta = citta;
		this.idspecificaordine = idspecificaordine;
	}

// inserisce ordine nel db
	public void inserisciordine() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			String sql = "INSERT INTO Ordine(NumeroOrdine,Stato,DataOrdine,IDUtente,Via,Cap,Citta,IDSpecificaOrdine) values (?,?,?,?,?,?,?,?)";

			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, numeroordine);
			preparedStatement.setString(2, stato);
			preparedStatement.setDate(3, java.sql.Date.valueOf(dataordine));
			preparedStatement.setString(4, idutente);
			preparedStatement.setString(5, via);
			preparedStatement.setString(6, cap);
			preparedStatement.setString(7, citta);
			preparedStatement.setInt(8, idspecificaordine);

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

	// restiuisce tutti gli ordini del db
	public ArrayList<Ordine> restituisciordini() {

		ArrayList<Ordine> listaordini = new ArrayList<Ordine>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			String sql = "select* from Ordine ";

			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);

			ResultSet rs = preparedStatement.executeQuery();
			LocalDate dataoggi = LocalDate.now();
			Date data = java.sql.Date.valueOf(dataordine);

			while (rs.next()) {
				int numeroordine = rs.getInt(1);
				String stato = rs.getString(2);
				data = rs.getDate(3);

				String idutente = rs.getString(4);
				String via = rs.getString(5);
				String cap = rs.getString(6);
				String citta = rs.getString(7);
				int idspecificaordine = rs.getInt(8);

				Ordine ris = new Ordine(numeroordine, stato, data, idutente, via, cap, citta, idspecificaordine);
				listaordini.add(ris);

			}

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
		return listaordini;
	}

	// restituisce ordine in base all id
	public ArrayList<Ordine> restituisciordiniid(String id) {

		ArrayList<Ordine> listaordini = new ArrayList<Ordine>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			String sql = "select* from Ordine where IDUtente='" + id + "'";

			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);

			ResultSet rs = preparedStatement.executeQuery();
			LocalDate dataoggi = LocalDate.now();
			Date data = java.sql.Date.valueOf(dataordine);

			while (rs.next()) {
				int numeroordine = rs.getInt(1);
				String stato = rs.getString(2);
				data = rs.getDate(3);

				String idutente = rs.getString(4);
				String via = rs.getString(5);
				String cap = rs.getString(6);
				String citta = rs.getString(7);
				int idspecificaordine = rs.getInt(8);

				Ordine ris = new Ordine(numeroordine, stato, data, idutente, via, cap, citta, idspecificaordine);
				listaordini.add(ris);

			}

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
		return listaordini;
	}
	// restituisce ordine in base all id
		public ArrayList<Ordine> restituisciordinidata(Date data1,Date data3) {

			ArrayList<Ordine> listaordini = new ArrayList<Ordine>();
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;

			try {
				String sql = "select* from Ordine where DataOrdine between'" + data1 + "' and'" + data3 + "'";

				connection = ds.getConnection();
				preparedStatement = connection.prepareStatement(sql);

				ResultSet rs = preparedStatement.executeQuery();
				LocalDate dataoggi = LocalDate.now();
				Date data2 = java.sql.Date.valueOf(dataordine);

				while (rs.next()) {
					int numeroordine = rs.getInt(1);
					String stato = rs.getString(2);
					data2 = rs.getDate(3);

					String idutente = rs.getString(4);
					String via = rs.getString(5);
					String cap = rs.getString(6);
					String citta = rs.getString(7);
					int idspecificaordine = rs.getInt(8);

					Ordine ris = new Ordine(numeroordine, stato, data2, idutente, via, cap, citta, idspecificaordine);
					listaordini.add(ris);

				}

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
			return listaordini;
		}


// get e set
	public int getNumeroordine() {
		return numeroordine;
	}

	public void setNumeroordine(int numeroordine) {
		this.numeroordine = numeroordine;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public LocalDate getDataordine() {
		return dataordine;
	}

	public void setDataordine(LocalDate dataordine) {
		this.dataordine = dataordine;
	}

	public String getIdutente() {
		return idutente;
	}

	public void setIdutente(String idutente) {
		this.idutente = idutente;
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

	public int getIdspecificaordine() {
		return idspecificaordine;
	}

	public void setIdspecificaordine(int idspecificaordine) {
		this.idspecificaordine = idspecificaordine;
	}

	private int numeroordine;
	private String stato;
	private LocalDate dataordine;
	private String idutente;
	private String via;
	private String cap;
	private String citta;
	private int idspecificaordine;

}
