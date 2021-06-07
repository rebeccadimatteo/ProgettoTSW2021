package model;

// crea un oggetto di tipo carrello che contiene un array lista di item che sarebbero i nostri prodotti
import java.util.ArrayList;

public class Carrello {

	public Carrello() {
		prodotti = new ArrayList<Item>();
	}

// somma  prezzo item nel carrello
	public double SommaPrezzo() {
		double somma = 0;
		for (int i = 0; i < prodotti.size(); i++) {
			somma = somma + (prodotti.get(i).getPrezzo()) * prodotti.get(i).getQuantita();
		}
		return somma;
	}

	// somma peso item nel carrello
	public double SommaPeso() {
		double peso = 0;
		for (int i = 0; i < prodotti.size(); i++) {
			peso = peso + prodotti.get(i).getPeso() * prodotti.get(i).getQuantita();
		}
		return peso;
	}

	// vede se il prodotto è presente nel carrello
	public boolean isPresente(Item prod) {
		int i = 0;
		boolean trovato = false;

		while (i < prodotti.size() && !trovato) {
			if (prod.getCodice().equalsIgnoreCase(prodotti.get(i).getCodice())) {
				incrementaQuantita(prod);
				trovato = true;
			}
			i++;
		}
		return trovato;

	}

	// restituisce indice del prodotto con quel codice all'interno del carrello
	public int indice(String codfin) {
		int i = 0;
		int trovato = 0;

		while (i < this.getProdotti().size()) {
			if (this.getProdotti().get(i).getCodice().equalsIgnoreCase(codfin)) {
				trovato = i;
			}
			i++;

		}
		return trovato;

	}

	// rimuove un elemnto dal carrello con quel codice
	public void rimuovi(String cod2) {
		int i = 0;
		while (i < this.prodotti.size()) {
			if (this.getProdotti().get(i).getCodice().equalsIgnoreCase(cod2)) {
				this.getProdotti().remove(i);
			}
			i++;
		}

	}

// incrementa quantita di un detrminato prodotto
	public void incrementaQuantita(Item prod) {
		prod.setQuantita(prod.getQuantita() + 1);
	}

// diminuisce quantita prodotto
	public void decrementaQuantita(Item prod) {
		prod.setQuantita(prod.getQuantita() - 1);
	}

//aggiunge prodotto
	public void addProduct(Item prod) {
		prodotti.add(prod);
	}

// cancslla prodotto
	public void deleteProduct(Item prod) {
		for (Item prodotto1 : prodotti) {
			if (prodotto1.getCodice() == prod.getCodice()) {
				prodotti.remove(prodotto1);
				break;
			}
		}
	}

// get e set 
	public Item getItemIndex(int i) {
		return prodotti.get(i);
	}

	public int lengthCarrello() {
		return prodotti.size();
	}

	public ArrayList<Item> getProdotti() {
		return prodotti;
	}

	private ArrayList<Item> prodotti;

}
