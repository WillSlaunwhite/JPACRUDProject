package com.skilldistillery.jpacrud.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Player;

@Transactional
@Service
public class PlayerDaoImpl implements PlayerDao {
	@PersistenceContext
	private EntityManager em;
	String jpql = "SELECT p FROM Player p";
//	List<Player> players = em.createQuery(jpql, Player.class).getResultList();
	
	@Override
	public Player findPlayerById(int id) {
		return em.createQuery(jpql + " WHERE id = :id", Player.class).setParameter("id", id).getSingleResult();
	}

	@Override
	public List<Player> findAll() {
		return em.createQuery(jpql, Player.class).getResultList();
	}
	
	@Override
	public List<Player> findByFirstName(String name) {
		List<Player> players = em.createQuery(jpql, Player.class).getResultList();
		List<Player> listWithFirstName = new ArrayList<Player>();
		
		for(Player player : players) {
			if(player.getFirstName().toLowerCase().equals(name.toLowerCase()) 
					|| player.getFirstName().toLowerCase().contains(name.toLowerCase()))
			{
				listWithFirstName.add(player);
			}
		}
		
		return listWithFirstName;
	}

	@Override
	public List<Player> findByLastName(String name) {
		List<Player> players = em.createQuery(jpql, Player.class).getResultList();
		List<Player> listWithLastName = new ArrayList<Player>();

		for(Player player : players) {
			if(player.getLastName().toLowerCase().equals(name.toLowerCase()) 
					|| player.getLastName().toLowerCase().contains(name.toLowerCase()))
			{
				listWithLastName.add(player);
			}
		}
		
		return listWithLastName;
	}
	
	@Override
	public Player addPlayer() {
		
		
		return null;
	}
	@Override
	public Player addPlayer(String firstName, String lastName, String position, int number) {
		Player player = new Player();
		player.setFirstName(firstName);
		player.setLastName(lastName);
		player.setNumber(number);
		player.setPosition(position);
		em.persist(player);
		
		return player;
	}

	public Player removePlayerByLastName(String lastName) {
		List<Player> players = em.createQuery(jpql, Player.class).getResultList();
		Player deletedPlayer = null;
		
		if(lastName == null || lastName.equals("")) {
			return null;
		}
		
		for(Player player : players) {
			if(player.getLastName().toLowerCase().equals(lastName.toLowerCase())) {
				
				deletedPlayer = player;
				em.createQuery("DELETE FROM Player p WHERE p.lastName = :lastname").setParameter("lastname", player.getLastName()).executeUpdate();
//				em.createQuery(query, Player.class).setParameter("lastname", player.getLastName());
//				em.createQuery(query).setParameter("lastname", player.getLastName());
			}
		}
//		System.out.println(players);
		return deletedPlayer;
	}
	
	@Override
	public List<Player> findByPosition(String position) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Player findByNumber(int number) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
