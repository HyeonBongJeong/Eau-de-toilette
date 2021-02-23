package com.kkkj.eaude.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.MainVO;

@Repository("maDao")
public class MainDao {

	@Autowired
	private SqlSession sqlSession;


	public int idCheck(String m_id) {
		return sqlSession.selectOne("Main.idCheck", m_id);
	}


	public int emailCheck(String m_email) {
		return sqlSession.selectOne("Main.emailCheck", m_email);
	}


	public int insertMember(MainVO vo) {
		return sqlSession.insert("Main.insertMember", vo);
	}


	public int idExist(MainVO vo) {
		return sqlSession.selectOne("Main.idExist", vo);
	}


	public int pwExist(MainVO vo) {
		return sqlSession.selectOne("Main.pwExist", vo);
	}


	public MainVO regInfo(String my_name) {
		return sqlSession.selectOne("Main.regInfo", my_name);
	}


	public int findid(MainVO vo) {
		return sqlSession.selectOne("Main.findid", vo);
	}


	public String findidresult(MainVO vo) {
		return sqlSession.selectOne("Main.findidresult", vo);
	}


	public int findpw(MainVO vo) {
		return sqlSession.selectOne("Main.findpw", vo);
	}


	public int changepw(MainVO vo) {
		return sqlSession.update("Main.changepw", vo);
	}


}
