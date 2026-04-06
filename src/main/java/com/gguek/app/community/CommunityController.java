package com.gguek.app.community;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community/*")
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;

	@GetMapping("list")
	public void list() {
		List<CommunityDTO> ar = communityService.list();
		
		for(CommunityDTO dto : ar) {
			System.out.println(dto);
		}
		
	}
	
}
