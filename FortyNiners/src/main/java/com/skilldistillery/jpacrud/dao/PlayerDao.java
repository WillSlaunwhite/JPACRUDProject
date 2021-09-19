package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Player;

public interface PlayerDao {
	Player findPlayerById(int id);
	List<Player> findAll();
	List<Player> findByFirstName(String name);
}
