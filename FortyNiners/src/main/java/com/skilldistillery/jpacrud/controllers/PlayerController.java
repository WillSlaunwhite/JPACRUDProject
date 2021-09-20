package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.dao.PlayerDao;
import com.skilldistillery.jpacrud.entities.Player;

@Controller
public class PlayerController {
	@Autowired
	private PlayerDao dao;
	
	@RequestMapping(path="/")
	public String home(Model model) {
		List<Player> players = dao.findAll();
		model.addAttribute("players", players);
		
		return "index";
	}
	
	@RequestMapping(path="showAll.do")
	public String showAll(Model model) {
		List<Player> players = dao.findAll();
		model.addAttribute("players", players);
		return "showplayers";
	}
	
	@RequestMapping(path="findPlayerById.do")
	public String showPlayer(Integer pid, Model model) {
		if(pid == null) { return "index"; }
		
		Player player = dao.findPlayerById(pid);
		model.addAttribute("player", player);
		
		if(player!=null) { return "showplayer"; }
		
		else { return "playernotfound"; }

	}
	
	@RequestMapping(path="getPlayerByFirstName.do")
	public String searchByFirstName(String name, Model model) {
		List<Player> players = dao.findByFirstName(name);
		model.addAttribute("players", players);
		
		if(players == null || players.size() == 0) {
			return "empty";
		} else { 
			return "showplayers"; 
		}
	}
	
	@RequestMapping(path="getPlayerByLastName.do")
	public String searchByLastName(String name, Model model) {
		List<Player> players = dao.findByLastName(name);
		model.addAttribute("players", players);
		
		if(players == null || players.size() == 0) {
			return "empty";
		} else { 
			return "showplayers"; 
		}
	}
	
	@RequestMapping(path="addPlayer.do")
	public String addPlayer(String firstName, String lastName, String position, int number, Model model) {
		Player player = dao.addPlayer(firstName, lastName, position, number);
		model.addAttribute("player", player);
		
		if(player != null) {
			return "addplayer";
		} else { return "addfail"; }
		
	}
	
	@RequestMapping(path="removePlayerByLastName.do")
	public String removePlayer(String lastName, Model model) {
		Player player = dao.removePlayerByLastName(lastName);
		model.addAttribute("player", player);
		
		if(player != null) {
			return "deletedplayer";
		} else { return "empty"; }
		
	}
	
	@RequestMapping(path="updatePlayerByLastName.do")
	public String updatePlayer(String firstName, String lastName, String position, int number, int age, int weight, int experience, String college, Model model) {
		Player player = dao.updatePlayer(firstName, lastName, position, number, age, weight, experience, college);
		model.addAttribute("player", player);
		
		if(player!=null) {
			return "updatedplayer";
		} else { return "empty"; }
	}
	
}
