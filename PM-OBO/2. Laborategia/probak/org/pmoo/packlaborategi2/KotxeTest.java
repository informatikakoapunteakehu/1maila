package org.pmoo.packlaborategi2;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class KotxeTest {
	
	private Kotxe k;
	private Pertsona p1;
	private Pertsona p2;


	@Before
	public void setUp() throws Exception {		
		k = new Kotxe("1234AB", "Ferrari Testarossa");
		p1=new Pertsona("Eneko Sampedro", 18, 24, 'G', "Euskal Herria", "O-");
		p2=new Pertsona("Andoni Bermo", 21, 34, 'G', "Euskal Herria", "A+");		
	}
	
	@After
	public void tearDown() throws Exception {
		k = null;
		p1=null;
		p2=null;
	}

	@Test
	public void testAldatuJabea() {
		k.aldatuJabea(p1);
		assertTrue("Eneko Sampedro"==k.getJabea().getIzenOsoa());
		assertFalse("Eneko Sampe"==k.getJabea().getIzenOsoa());
		k.aldatuJabea(p2);
		assertTrue("Andoni Bermo"==k.getJabea().getIzenOsoa());
		assertFalse("Andoni"==k.getJabea().getIzenOsoa());		
	}
	
	@Test
	public void testGetJabea() {
		k.aldatuJabea(p1);
		assertTrue("Eneko Sampedro"==k.getJabea().getIzenOsoa());
		assertFalse("Eneko Sampe"==k.getJabea().getIzenOsoa());		
	}
}
