package com.gguek.app.community;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.ui.Model;

@Controller
@RequestMapping("/community/*")
public class CommunityController {

	@Autowired
	private CommunityService communityService;

	@GetMapping("create")
	public void create() {
	}

	@PostMapping("create")
	public String create(CommunityDTO communityDTO) {
		int result = communityService.create(communityDTO);

		return "redirect:./list";
	}

	@GetMapping("list")
	public void list(Model model) {
		List<CommunityDTO> ar = communityService.list();

		model.addAttribute("list", ar);
	}

	@GetMapping("detail")
	public void detail(@RequestParam(name = "num") String num) {
		CommunityDTO communityDTO = communityService.detail(num);
		System.out.println(communityDTO);
	}
}
