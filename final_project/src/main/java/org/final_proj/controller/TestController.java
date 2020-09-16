package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class TestController {
		
	@GetMapping("/test")
		public void doindx() {
			log.info("search video");
		}
	
	
}
