package com.kkkj.eaude.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.MemberDao;

@Service("meService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao meDao;
	
	@Override
	public String findadd(String id) {
		return meDao.findadd(id);
	}

	
}
