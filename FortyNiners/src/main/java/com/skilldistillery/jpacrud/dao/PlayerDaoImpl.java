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
	
	
	@Override
	public Player findPlayerById(int id) {
		return em.find(Player.class, id);
	}

	@Override
	public List<Player> findAll() {
		// TODO Auto-generated method stub
		String jpql = "SELECT p FROM Player p";
		return em.createQuery(jpql, Player.class).getResultList();
	}
	
	@Override
	public List<Player> findByFirstName(String name) {
		System.out.println(name);
		String jpql = "SELECT p FROM Player p";
//		em.setProperty("firstname", name);
		List<Player> players = em.createQuery(jpql, Player.class).getResultList();
		List<Player> listWithFirstName = new ArrayList<Player>();
		
		for(Player player : players) {
			if(player.getFirstName().equals(name)) {
				listWithFirstName.add(player);
			}
		}
		
		
		return listWithFirstName;
	}
	
}
