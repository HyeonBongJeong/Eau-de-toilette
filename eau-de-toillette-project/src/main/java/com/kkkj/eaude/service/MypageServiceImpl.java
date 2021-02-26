package com.kkkj.eaude.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kkkj.eaude.dao.MyPageDao;
import com.kkkj.eaude.domain.Member;
import com.kkkj.eaude.domain.Purchasehistory;
import com.kkkj.eaude.domain.ShoppingDestination;

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

	@Override
	public List<ShoppingDestination> mypageShippingDestination(ShoppingDestination sd) {
		return myDao.mypageShippingDestination(sd);
	}

	@Override
	public void mypageAddrInsert(ShoppingDestination sd) {
		myDao.mypageAddrInsert(sd);
		
	}

	@Override
	public void mypageAddrUpdate(ShoppingDestination sd) {
		myDao.mypageAddrUpdate(sd);
		
	}

	@Override
	public void memberAddrUpdate(Member m) {
		myDao.memberAddrUpdate(m);
		
	}

	@Override
	public int myPageAddrDelete(ShoppingDestination sd) {
		return myDao.myPageAddrDelete(sd);
	}

	@Override
	public List<ShoppingDestination> myPageAddrChkNum(ShoppingDestination sd) {
		return myDao.myPageAddrChkNum(sd);
	}

	@Override
	public List<Member> chkGrade(String id) {
		return myDao.chkGrade(id);
	}

	@Override
	public void pointUpdate(Member m) {
		myDao.pointUpdate(m);
		
	}

	@Override
	public void sdDefaultChange(ShoppingDestination sd) {
		myDao.sdDefaultChange(sd);
		
	}
	@Override
	public void sdDefaultChange2(ShoppingDestination sd) {
		myDao.sdDefaultChange2(sd);
		
	}

	@Override
	public List<Purchasehistory> myPageOrderList(Purchasehistory ph) {
		return myDao.myPageOrderList(ph);
	}

	

	@Override
	public int totalCount() {
		return myDao.totalCount();
	}

	@Override
	public List<Member> selectSearchMember(String keyword) {
		return myDao.selectSearchMember(keyword);
	}

	@Override
	public List<Member> manage_user(int currentPage, int limit) {
		return myDao.manage_user(currentPage, limit);
	}

	@Override
	public int totaSearchlCount(String keyword) {
		return myDao.totaSearchlCount(keyword);
	}

	@Override
	public int myPageManageUserDelete(Member m) {
		return myDao.myPageManageUserDelete(m);
	}

	@Override
	public List<Member> getRegCount() {
		return myDao.getRegCount();
	}

}
