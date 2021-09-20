package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Player;

public interface PlayerDao {
	Player findPlayerById(int id);
	List<Player> findAll();
	List<Player> findByFirstName(String name);
	List<Player> findByLastName(String name);
	List<Player> findByPosition(String position);
	Player findByNumber(int number);
	Player addPlayer();
	Player addPlayer(String firstName, String lastName, String position, int number);
	Player removePlayerByLastName(String lastName);
}
