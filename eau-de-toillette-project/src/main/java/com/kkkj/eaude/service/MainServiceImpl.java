package com.kkkj.eaude.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.MainDao;
import com.kkkj.eaude.domain.MainVO;

@Service("maService")
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao maDao;
	
	@Override
	public int idCheck(String m_id) {
		return maDao.idCheck(m_id);
	}

	@Override
	public int emailCheck(String m_email) {
		return maDao.emailCheck(m_email);
	}

	@Override
	public int insertMember(MainVO vo) {
		return maDao.insertMember(vo);
	}

	@Override
	public int idExist(MainVO vo) {
		return maDao.idExist(vo);
	}

	@Override
	public int pwExist(MainVO vo) {
		return maDao.pwExist(vo);
	}

	@Override
	public MainVO regInfo(String my_name) {
		return maDao.regInfo(my_name);
	}

	@Override
	public int findid(MainVO vo) {
		return maDao.findid(vo);
	}

	@Override
	public String findidresult(MainVO vo) {
		return maDao.findidresult(vo);
	}

	@Override
	public int findpw(MainVO vo) {
		return maDao.findpw(vo);
	}

	@Override
	public int changepw(MainVO vo) {
		return maDao.changepw(vo);
	}


}
