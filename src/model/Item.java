package model;

public class Item {

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

	private String nome;
	private String codice;
	private String descrizione;
	private double prezzo;
	private double peso;
	private String codicecategoria;
	private String img;
	private double quantita;

}