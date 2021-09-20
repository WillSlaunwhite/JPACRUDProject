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
	
	@RequestMapping(path="findPlayerById.do")
	public String showPlayer(Integer pid, Model model) {
		Player player = dao.findPlayerById(pid);
		model.addAttribute("player", player);
		
		if(player!=null) { return "showplayer"; }
		
		else { return "empty"; }

	}
	
	@RequestMapping(path="getPlayerByFirstName.do")
	public String searchByFirstName(String name, Model model) {
		List<Player> players = null;
		players = dao.findByFirstName(name);
		model.addAttribute("players", players);
		
		if(players == null || players.size() == 0) {
			return "empty";
		} else { 
			return "showplayers"; 
		}
	}
	
	@RequestMapping(path="getPlayerByLastName.do")
	public String searchByLastName(String name, Model model) {
		List<Player> players = null;
		players = dao.findByLastName(name);
		model.addAttribute("players", players);
		
		if(players == null || players.size() == 0) {
			return "empty";
		} else { 
			return "showplayers"; 
		}
	}
	
	@RequestMapping(path="addPlayer.do")
	public String addPlayer(String firstName, String lastName, String position, int number, Model model) {
		Player player = null;
		player = dao.addPlayer(firstName, lastName, position, number);
		model.addAttribute("player", player);
		
		if(player != null) {
			return "showplayer";
		} else { return "addfail"; }
		
		
	}
	
}
