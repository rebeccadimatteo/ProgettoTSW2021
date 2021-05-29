package model;

import java.util.ArrayList;

public class Carrello {

	public Carrello() {
		prodotti = new ArrayList<Item>();
	}

	public double SommaPrezzo() {
		double somma = 0;
		for (int i = 0; i < prodotti.size(); i++) {
			somma = somma +( prodotti.get(i).getPrezzo())*prodotti.get(i).getQuantita();
		}
		return somma;
	}
	public double SommaPeso() {
		double peso = 0;
		for (int i = 0; i < prodotti.size(); i++) {
			peso = peso + prodotti.get(i).getPeso()*prodotti.get(i).getQuantita();
		}
		return peso;
	}
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
	public int indice(String codfin) {
		int i = 0;
		int trovato=0;
		
		while(i<this.getProdotti().size())
		{
			if(this.getProdotti().get(i).getCodice().equalsIgnoreCase(codfin))
			{
				 trovato=i;
			}
			i++;
			
		}
		return trovato;

	}
	
	public void rimuovi(String cod2) {
		int i=0;
		while (i < this.prodotti.size()) {
			if(this.getProdotti().get(i).getCodice().equalsIgnoreCase(cod2))
			{
				this.getProdotti().remove(i);
			}
			i++;
		}
		
		

	}



	public void incrementaQuantita(Item prod) {
		prod.setQuantita(prod.getQuantita() + 1);
	}

	public void decrementaQuantita(Item prod) {
		prod.setQuantita(prod.getQuantita() - 1);
	}

	public void addProduct(Item prod) {
		prodotti.add(prod);
	}

	public void deleteProduct(Item prod) {
		for (Item prodotto1 : prodotti) {
			if (prodotto1.getCodice() == prod.getCodice()) {
				prodotti.remove(prodotto1);
				break;
			}
		}
	}

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
