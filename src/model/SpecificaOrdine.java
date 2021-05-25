package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Random;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class SpecificaOrdine {
	
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
	
	
	
	public SpecificaOrdine(int id, int numeroordine, double pesotot, double costotot, String via, String cap,
			String citta, String idutente) {
		super();
		Random n = new Random();

		

		int d = 1 + n.nextInt(100000) + 1;
		this.id =d;
		this.numeroordine = numeroordine;
		this.pesotot = pesotot;
		this.costotot = costotot;
		this.via = via;
		this.cap = cap;
		this.citta = citta;
		this.idutente = idutente;
	}
	 
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumeroordine() {
		return numeroordine;
	}
	public void setNumeroordine(int numeroordine) {
		this.numeroordine = numeroordine;
	}
	public double getPesotot() {
		return pesotot;
	}
	public void setPesotot(double pesotot) {
		this.pesotot = pesotot;
	}
	public double getCostotot() {
		return costotot;
	}
	public void setCostotot(double costotot) {
		this.costotot = costotot;
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
	public String getIdutente() {
		return idutente;
	}
	public void setIdutente(String idutente) {
		this.idutente = idutente;
	}

	
	public void inserisciSpecificaOrdine() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {

			String sql = "INSERT INTO SpecificaOrdine(ID,NumeroOrdine,PesoTotale,CostoTotale,Via,Cap,Citta,IDUtente) values (?,?,?,?,?,?,?,?)";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.setInt(2, numeroordine);
			preparedStatement.setDouble(3, pesotot);
			preparedStatement.setDouble(4, costotot);
			preparedStatement.setString(5, via);
			preparedStatement.setString(6, cap);
			preparedStatement.setString(7, citta);
			preparedStatement.setString(8, idutente);
			

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
	
	
public ArrayList<SpecificaOrdine>getOrdiniById(Utente ut)
{
	ArrayList<SpecificaOrdine> listaordini= new ArrayList<SpecificaOrdine>();
	if(ut.isValid())
	{
		try {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			id = this.getId();

			String sql = "select * from SpecificaOrdine where IDUtente='" + ut.getId() + "'";
			connection = ds.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			ResultSet rs = preparedStatement.executeQuery();

			while( rs.next() )
			{
				
				SpecificaOrdine ris= new SpecificaOrdine(rs.getInt(1),rs.getInt(2),rs.getDouble(3),rs.getDouble(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
			listaordini.add(ris);
			}

		} catch (SQLException e) {
			System.out.println("Errore");

		}
		
	}
	return listaordini;
}
	private int id;
	private int numeroordine;
	private double pesotot;
	private double costotot;
	private String via;
	private String cap;
	private String citta;
	private String idutente;
	

}
