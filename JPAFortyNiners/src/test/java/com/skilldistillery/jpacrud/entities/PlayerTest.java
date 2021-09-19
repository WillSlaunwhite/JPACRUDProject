package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PlayerTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Player player;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFortyNiners");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		player = em.find(Player.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		player = null;
	}

	@Test
	@DisplayName("test player entity")
	void test() {
		assertNotNull(player);
		assertEquals("Jimmy", player.getFirstName());
		assertEquals("Garoppolo", player.getLastName());
		assertEquals(10, player.getNumber());
		assertEquals("QB", player.getPosition());
		assertEquals(29, player.getAge());
		assertEquals(6.0, player.getHeight());
		assertEquals(225, player.getWeight());
		assertEquals(8, player.getExperience());
		assertEquals("Eastern Illinois", player.getCollege());
	}

}
