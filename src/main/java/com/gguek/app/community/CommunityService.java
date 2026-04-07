package com.gguek.app.community;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CommunityService {
	
	@Autowired
	private CommunityDAO communityDAO;
	
	
	
	
	public int create(CommunityDTO communityDTO) {
		return communityDAO.create(communityDTO);
	}
	

	public List<CommunityDTO> list() {
		return communityDAO.list();
	}

	public CommunityDTO detail(String num) {
		return communityDAO.detail(num);
	}
}
