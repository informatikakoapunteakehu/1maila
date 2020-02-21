package org.pmoo.packlaborategi1;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class PertsonaTest {
	
	private Pertsona p1;
	private Pertsona p2;

	@Before
	public void setUp() throws Exception {
		p1=new Pertsona("Andoni Bermo", 21, 34, 'G', "Euskal Herria", "A+");
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "O-");
	}

	@After
	public void tearDown() throws Exception {
		p1=null;
		p2=null;
	}

	@Test
	public void testIdBerdinaDu() {
		assertFalse(p1.idBerdinaDu(p2.getIdPertsona()));	
		assertFalse(p2.idBerdinaDu(p1.getIdPertsona()));
		p1=new Pertsona("Andoni Bermo", 21, 24, 'G', "Euskal Herria", "A+");
		assertTrue(p1.idBerdinaDu(p2.getIdPertsona()));	
		assertTrue(p2.idBerdinaDu(p1.getIdPertsona()));
	}

	@Test
	public void testGidatuDezake() {
		assertTrue(p1.gidatuDezake());
		assertTrue(p2.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 15, 34, 'G', "Euskal Herria", "A+");
		assertFalse(p1.gidatuDezake());	
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A+");
		assertTrue(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 17, 34, 'G', "Erresuma Batua", "A+");
		assertTrue(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 16, 34, 'G', "Erresuma Batua", "A+");
		assertFalse(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 15, 34, 'G', "Australia", "A+");
		assertFalse(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 16, 34, 'G', "Australia", "A+");
		assertTrue(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 16, 34, 'G', "Estatu Batuak", "A+");
		assertTrue(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 15, 34, 'G', "Estatu Batuak", "A+");
		assertFalse(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 14, 34, 'G', "Etiopia", "A+");
		assertTrue(p1.gidatuDezake());
		p1=new Pertsona("Andoni Bermo", 13, 34, 'G', "Etiopia", "A+");
		assertFalse(p1.gidatuDezake());		
	}

	@Test
	public void testOdolaEmandiezaioke() {
		
		//eginda
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "B+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "A+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "AB-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		
		p2=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "AB+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB+");
		assertTrue(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "AB-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "B-");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "O+");
		assertFalse(p2.odolaEmandiezaioke(p1));
		p1=new Pertsona("Andoni Bermo", 18, 34, 'G', "Euskal Herria", "A+");
		assertFalse(p2.odolaEmandiezaioke(p1));		
	}

	@Test
	public void testGetIzenarenIniziala() {
		assertTrue('A'==p1.getIzenarenIniziala());
		assertFalse('B'==p1.getIzenarenIniziala());
		assertTrue('E'==p2.getIzenarenIniziala());
		assertFalse('D'==p2.getIzenarenIniziala());		
	}

	@Test
	public void testGetAbizenarenIniziala() {
		assertTrue('B'==p1.getAbizenarenIniziala());
		assertFalse('J'==p1.getAbizenarenIniziala());
		assertTrue('S'==p2.getAbizenarenIniziala());
		assertFalse('P'==p2.getAbizenarenIniziala());		
		p1=new Pertsona("Andoni Bermo Pérez", 18, 34, 'G', "Euskal Herria", "A+");
		assertTrue('P'==p1.getAbizenarenIniziala());
		assertFalse('J'==p1.getAbizenarenIniziala());		
	}
}