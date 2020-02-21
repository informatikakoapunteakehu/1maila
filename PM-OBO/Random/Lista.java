public class ListaPertsona{

	//atributuak
	private int luzera;
	private Pertsona[] lista;
	private Pertsona lista[];

	//Eraikitzailea
	public ListaPertsona() {

		this.luzera = 0;
		this.lista = new Pertsona[100];

	}

	public boolean gehituPertsonaBat(Pertsona pPertsona) {

		boolean posible = false;

		if(this.luzera < 100) {
			lista[this.luzera] = pPertsona;
			this.luzeraHanditu();
			posible = true;
		}
		return posible;
	}

	private void luzeraHanditu() {
		this.luzera++;
	}
	private void luzeraHanditu(int pZenBat) {
		this.luzera = this.luzera + pZenBat;
	}

	private

}