package com.kkkj.eaude.service;

import com.kkkj.eaude.domain.MainVO;

public interface MainService {

	int idCheck(String m_id);

	int emailCheck(String m_email);

	int insertMember(MainVO vo);

	int idExist(MainVO vo);

	int pwExist(MainVO vo);

	MainVO regInfo(String my_name);

	int findid(MainVO vo);

	String findidresult(MainVO vo);

	int findpw(MainVO vo);

	int changepw(MainVO vo);

}
