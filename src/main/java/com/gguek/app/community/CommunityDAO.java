package com.gguek.app.community;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommunityDAO {

	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.gguek.app.community.CommunityDAO.";
	
//	public List<CommunityDTO> list() {
//		return session.selectList(NAMESPACE+"list");
//	}
//	------
	public List<CommunityDTO> list(Map<String, Object> params) {
        // 파라미터(offset, size)를 담은 map을 같이 넘깁니다.
        return session.selectList(NAMESPACE + "list", params);
    }
	
	public int getTotalCount() {
        return session.selectOne(NAMESPACE + "getTotalCount");
    }
//	------
	
	public CommunityDTO detail(String num) {
		return session.selectOne(NAMESPACE+"detail", num);
	}
}
