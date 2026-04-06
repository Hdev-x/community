package com.gguek.app.community;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommunityDAO {

	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.gguek.app.community.CommunityDAO.";
	
	public List<CommunityDTO> list() {
		return session.selectList(NAMESPACE+"list");
	}
}
