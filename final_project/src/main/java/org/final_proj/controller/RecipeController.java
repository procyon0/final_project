package org.final_proj.controller;

import org.final_proj.service.RecipeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/recipe/*")
@AllArgsConstructor
public class RecipeController {
	private RecipeService service;
	
	@GetMapping("/all")
	public void all(Model model) {
		log.info("all");
		model.addAttribute("all", service.getList());
		
	}
	
	@GetMapping("/detail")
	public void getDetail(@RequestParam Long id, Model model) {
		log.info("/detail");
		model.addAttribute("recipe", service.detail(id));
	}
	
	@GetMapping("/search")
	public String searchMain(Model model) {
		return "/recipe/searchMain";
	}
}
