package com.kkkj.eaude.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kkkj.eaude.domain.Member;
import com.kkkj.eaude.domain.ShoppingDestination;

@Repository("myDao")
public class MyPageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public List<Member> mypage_update(Member m) {
		return sqlSession.selectList("Member.mypage_update",m);
	}


	public int myPageEmailChk(Member m) {
		Object selectResult = sqlSession.selectOne("Member.myPageEmailChk",m);
		int result = 0;
		if(selectResult != null) {
			result = 1;
		}
		return result;
				
	}


	public int myPageUpdateInfo(Member m) {
		return sqlSession.update("Member.myPageUpdateInfo",m);
	}


	public int myPagePassChk(Member m) {
		Object selectResult = sqlSession.selectOne("Member.myPagePassChk",m);
		int result = 0;
		if(selectResult != null) {
			result = 1;
		}else {
			result = 0;
		}
		return result;
	}


	public List<Member> myPageTop(Member m) {
		return sqlSession.selectList("Member.myPageTop",m);
	}
	
	public List<ShoppingDestination> mypageShippingDestination(ShoppingDestination sd) {
		return sqlSession.selectList("ShoppingDestination.mypageShippingDestination",sd);
	}
	
	public void mypageAddrInsert(ShoppingDestination sd) {
		sqlSession.insert("ShoppingDestination.mypageAddrInsert",sd);
	}
	public void mypageAddrUpdate(ShoppingDestination sd) {
		sqlSession.update("ShoppingDestination.mypageAddrUpdate",sd);
	}
	public void memberAddrUpdate(Member m) {
		sqlSession.update("Member.memberAddrUpdate",m);
	}
	public int myPageAddrDelete(ShoppingDestination sd) {
		return sqlSession.delete("ShoppingDestination.myPageAddrDelete",sd);
	}
	public List<ShoppingDestination> myPageAddrChkNum(ShoppingDestination sd) {
		return sqlSession.selectList("ShoppingDestination.myPageAddrChkNum",sd);
	}
	

}
