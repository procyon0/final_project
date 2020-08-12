/**
 * 유튜브 페이지 관련 컨트롤러
 * 
 */
package org.final_proj.controller;

import java.util.List;

import org.final_proj.domain.ChannelVO;
import org.final_proj.service.VideoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/video/*")
@Controller
@Log4j
@AllArgsConstructor
public class VideoController {
	private VideoService service;
	
	// 요리비책(동영상) 페이지로 넘어감
	@GetMapping("/channels")
	public void channelPage(Model model) {
		List<ChannelVO> cList = service.getChannel();
		model.addAttribute("cList", cList);
	}
}