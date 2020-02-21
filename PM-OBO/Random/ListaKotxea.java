public class ListaKotxeak {

	private ArrayList<Kotxe> lista;

	public ListaKotxeak (){
		lista = new ArrayList<Kotxe>();
	}

	public int KotxeBatekEginikoKilometroak(String pMatrikula) {
		int emaitza = -1;
		Kotxea kotxeBat;
		kotxeBat = this.bilatuKotxea(String pmatrikula);
		if (kotxeBat != null) {
			emaitza = kotxeBat.zenbatKilometroEginDitu();
		}

		return emaitza;
	}

}