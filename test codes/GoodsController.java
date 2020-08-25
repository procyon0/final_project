package org.final_proj.controller;

import org.final_proj.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/goods/*")
@Log4j
@AllArgsConstructor
public class GoodsController {
	
	private GoodsService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list",service.getList());
	}
	
	@GetMapping("/detail")
	public void detail(@RequestParam("goodsId") String goodsId,Model model) {
	
		log.info("/detail");
		model.addAttribute("detail",service.getDetail(goodsId));
	

	}
}
