package com.gguek.app.community;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gguek.app.util.PageVo;

@Service
public class CommunityService {
	
	@Autowired
	private CommunityDAO communityDAO;
	
	
//	-------
//	public List<CommunityDTO> list() {
//		return communityDAO.list();
//	}
//	-------
	// 1. 컨트롤러에서 호출하는 이름(getTotalCount)으로 메서드 추가
    public int getTotalCount() {
        return communityDAO.getTotalCount(); // DAO에도 이 메서드를 만들어야 합니다.
    }

    // 2. 컨트롤러에서 PageVo를 던져주고 있으므로 파라미터를 PageVo로 변경
    public List<CommunityDTO> list(PageVo pageVo) {
        // PageVo 안에 offset(또는 startRow)과 size가 계산되어 있다고 가정합니다.
        Map<String, Object> params = new HashMap<>();
        params.put("offset", pageVo.getStartPage()); // PageVo의 필드명 확인 필요
        params.put("size", pageVo.getSize());

        return communityDAO.list(params);
    }
//	-------
	public CommunityDTO detail(String num) {
		return communityDAO.detail(num);
	}
}
