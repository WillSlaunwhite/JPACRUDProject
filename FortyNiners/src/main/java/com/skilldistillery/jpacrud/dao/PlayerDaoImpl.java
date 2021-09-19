package com.skilldistillery.jpacrud.dao;

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

}
