package com.gguek.app.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommunityService {
	
	@Autowired
	private CommunityDAO communityDAO;
	
	public List<CommunityDTO> list() {
		return communityDAO.list();
	}
}
