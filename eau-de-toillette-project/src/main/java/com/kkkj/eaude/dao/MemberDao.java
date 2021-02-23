package com.kkkj.eaude.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("meDao")
public class MemberDao {

	
	@Autowired
	private SqlSession sqlSession;
	public String findadd(String id) {
		
		
		return sqlSession.selectOne("Member.findaddress",id);
		
	}
	
}
