package com.kkkj.eaude.service;

import java.util.List;

import com.kkkj.eaude.domain.MainVO;
import com.kkkj.eaude.domain.Product;

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

	int insertMemberAddr(MainVO vo);

	List<Product> showMainCandle();

	List<Product> showMainDifuser();

	List<Product> showMainPerfume();

	List<Product> showMainBodyCream();

}
