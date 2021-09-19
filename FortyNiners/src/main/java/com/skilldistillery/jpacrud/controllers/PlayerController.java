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
		System.out.println(players);
		model.addAttribute("players", players);
		
		return "index";
	}
	
	@RequestMapping(path="getPlayer.do")
	public String showPlayer(Integer pid, Model model) {
		Player player = dao.findPlayerById(pid);
		model.addAttribute("player", player);
		
		return "showplayer";

	}
	
	@RequestMapping(path="getPlayerByFirstName.do")
	public String searchByName(String name, Model model) {
		List<Player> players = dao.findByFirstName(name);
		model.addAttribute("players", players);
		System.out.println(name);
		
		if(players.size() != 0) {
			return "showplayers";
		}
		else {
			return "empty";
		}
	}
	
	
	
	
}
