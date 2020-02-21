package org.pmoo.packlaborategi1;

public class Main_Activity {

	public static void main(String[] args) {
		
		Pertsona pertsona1 = new Pertsona("Ni Ni", 18, 45918376, 'G', "Euskalduna","O-");
		Pertsona pertsona2 = new Pertsona("Lolailo Martinez Perez", 14, 45918376, 'G', "Etiopiarra","O-");
		
		System.out.println(pertsona1.getAbizenarenIniziala());
		System.out.println(pertsona2.getAbizenarenIniziala());
		System.out.println(pertsona1.getAdina());
		System.out.println(pertsona1.gidatuDezake());
		
		System.out.println(pertsona1.odolaEmandiezaioke(pertsona2));
		System.out.println(pertsona2.odolaEmandiezaioke(pertsona1));
		
	}

}
