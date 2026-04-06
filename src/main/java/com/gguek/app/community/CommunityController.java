package com.gguek.app.community;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gguek.app.util.PageVo;

import org.springframework.ui.Model;

@Controller
@RequestMapping("/community/*")
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;
	
	
//	----------

//	@GetMapping("list")
//	public void list() {
//		List<CommunityDTO> ar = communityService.list();
//		
//		for(CommunityDTO dto : ar) {
//			System.out.println(dto);
//		}
//		
//	}
	
//	----------
	@GetMapping("list")
    public String list(@RequestParam(name="page", defaultValue="1") int page, Model model) {
        // [수정] 1. 서비스에 getTotalCount() 메서드가 있어야 합니다.
        int totalCount = communityService.getTotalCount();

        // 2. PageVo 생성 (기존 클래스 활용)
        PageVo pageVo = new PageVo(totalCount, page);

        // [수정] 3. 서비스의 list 메서드가 PageVo를 받도록 수정해야 합니다.
        List<CommunityDTO> ar = communityService.list(pageVo);
        
        // 4. 데이터 담기 (org.springframework.ui.Model을 써야 에러가 안 납니다)
        model.addAttribute("commList", ar);
        model.addAttribute("pageVo", pageVo);

        return "community/list"; 
    }
	
//	----------
	
	
	
	
	@GetMapping("detail")
	public void detail(@RequestParam(name="num") String num) {
		CommunityDTO communityDTO = communityService.detail(num);
		System.out.println(communityDTO);
	}
}
