package org.pmoo.packlaborategi1;

public class Pertsona {
	
	private String izenOsoa;
	private int adina;
	private int idPertsona;	
	private char sexua; //ez da erabiliko laborategian
	private String nazionalitatea;
	private String odolMota;
	
	public Pertsona(){
		this.izenOsoa="IzenEzezaguna AbizenEzezaguna";
		this.adina=0; //ez da beharrezkoa, 0 berez esleitzen duelako integer
	}	
	public Pertsona(String pIzenOsoa, int pAdina, int pIdPertsona, char pSexua, String pNazionalitatea, String pOdolMota){
		this.izenOsoa=pIzenOsoa;
		this.adina=pAdina;
		this.idPertsona=pIdPertsona;
		this.sexua=pSexua;
		this.nazionalitatea=pNazionalitatea;
		this.odolMota=pOdolMota;
	}	
	
	
	public String getIzenOsoa() {
		return izenOsoa;
	}
	public void setIzenOsoa(String pIzenOsoa) {
		this.izenOsoa = pIzenOsoa;
	}

	public int getAdina() {
		return adina;
	}
	public void setAdina(int pAdina) {
		this.adina = pAdina;
	}

	public int getIdPertsona() {
		return idPertsona;
	}
	public void setIdPertsona(int pIdPertsona) {
		this.idPertsona = pIdPertsona;
	}

	public String getNazionalitatea() {
		return nazionalitatea;
	}
	public void setNazionalitatea(String pNazionalitatea) {
		this.nazionalitatea = pNazionalitatea;
	}

	public String getOdolMota() {
		return odolMota;
	}
	public void setOdolMota(String pOdolMota) {
		this.odolMota = pOdolMota;
	}
	
	public boolean idBerdinaDu(int pIdZenb){
		if(this.idPertsona==pIdZenb){
			return true;
			}
		else{
			return false;
			}
	}
	
	public boolean gidatuDezake(){
		if(this.adina>17){
			return true;
		}
		else if(this.nazionalitatea=="Erresuma Batua"&&this.adina>16){
			return true;				
		}
		else if((this.nazionalitatea=="Australia"||this.nazionalitatea=="Estatu Batuak")&&this.adina>15){
			return true;
		}
		else if(this.nazionalitatea=="Etiopia"&&this.adina>13){
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean odolaEmandiezaioke(Pertsona pPerson){
		String bloodType=pPerson.getOdolMota();
		if(this.odolMota==bloodType){
			return true;
		}
		else if(this.odolMota=="O-"){
			return true;		
		}
		else if(bloodType=="AB+"){
			return true;			
		}
		else if(this.odolMota=="A-"&&(bloodType=="AB-"||bloodType=="A+")){
			return true;
		}
		else if(this.odolMota=="B-"&&(bloodType=="AB-"||bloodType=="B+")){
			return true;
		}
		else if(this.odolMota=="O+"&&(bloodType=="A+"||bloodType=="B+")){
			return true;			
		}
		else{
			return false;
		}
	}
	
	public char getIzenarenIniziala(){
		return this.izenOsoa.charAt(0);	
	}
	public char getAbizenarenIniziala() {
		
		char abizenarenIniziala = ' ';
		boolean atera = false;
		int indizea = izenOsoa.length();
		
		while ((indizea > 0) && (!atera)){
			
			if(izenOsoa.charAt(indizea-1) == ' ') {
				abizenarenIniziala = izenOsoa.charAt(indizea);
				atera = true;
			}
			else
				indizea--;
		}
		
		return abizenarenIniziala;	
	}
	
}
	
	