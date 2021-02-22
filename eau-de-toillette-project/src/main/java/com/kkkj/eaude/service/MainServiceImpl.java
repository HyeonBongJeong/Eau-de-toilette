package com.kkkj.eaude.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.MainDao;
import com.kkkj.eaude.domain.MainVO;

@Service("mService")
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao mDao;
	
	@Override
	public int idCheck(String m_id) {
		return mDao.idCheck(m_id);
	}

	@Override
	public int emailCheck(String m_email) {
		return mDao.emailCheck(m_email);
	}

	@Override
	public int insertMember(MainVO vo) {
		return mDao.insertMember(vo);
	}

	@Override
	public int idExist(MainVO vo) {
		return mDao.idExist(vo);
	}

	@Override
	public int pwExist(MainVO vo) {
		return mDao.pwExist(vo);
	}

	@Override
	public MainVO regInfo(String my_name) {
		return mDao.regInfo(my_name);
	}

	@Override
	public int findid(MainVO vo) {
		return mDao.findid(vo);
	}

	@Override
	public String findidresult(MainVO vo) {
		return mDao.findidresult(vo);
	}

	@Override
	public int findpw(MainVO vo) {
		return mDao.findpw(vo);
	}

	@Override
	public int changepw(MainVO vo) {
		return mDao.changepw(vo);
	}


}
