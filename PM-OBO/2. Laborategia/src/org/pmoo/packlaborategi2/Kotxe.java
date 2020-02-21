package org.pmoo.packlaborategi2;

public class Kotxe {
	
	private String matrikula;
	private String markaModeloa;
	private Pertsona jabea;
	
	public Kotxe(String pMatrikula, String pMarkaModeloa) {
		this.matrikula = pMatrikula;
		this.markaModeloa = pMarkaModeloa;
		this.jabea = null;	
	}
	
	public Pertsona getJabea() {
		return jabea;
	}
	
	public void aldatuJabea(Pertsona pJabea) {
		this.jabea = pJabea;
	}
	


}
