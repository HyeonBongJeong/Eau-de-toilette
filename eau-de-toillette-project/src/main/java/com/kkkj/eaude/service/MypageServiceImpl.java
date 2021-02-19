package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.MyPageDao;
import com.kkkj.eaude.domain.Member;

@Service("myService")
public class MypageServiceImpl implements MypageService {
	@Autowired
	private MyPageDao myDao;
	
	@Override
	public List<Member> mypage_update(Member m) {
		return myDao.mypage_update(m);
	}

	@Override
	public int myPageEmailChk(Member m) {
		return myDao.myPageEmailChk(m);
		
	}

	@Override
	public int myPageUpdateInfo(Member m) {
		return myDao.myPageUpdateInfo(m);
	}

	@Override
	public int myPagePassChk(Member m) {
		return myDao.myPagePassChk(m);
	}

	@Override
	public List<Member> myPageTop(Member m) {
		return myDao.myPageTop(m);
	}

}
