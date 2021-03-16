package com.kkkj.eaude.service;

import java.util.List;

import com.kkkj.eaude.domain.Member;
import com.kkkj.eaude.domain.Purchasehistory;
import com.kkkj.eaude.domain.ShoppingDestination;

public interface MypageService {

	List<Member> mypage_update(Member m);

	int myPageEmailChk(Member m);

	int myPageUpdateInfo(Member m);

	int myPagePassChk(Member m);

	List<Member> myPageTop(Member m);

	List<ShoppingDestination> mypageShippingDestination(ShoppingDestination sd);

	void mypageAddrInsert(ShoppingDestination sd);

	void mypageAddrUpdate(ShoppingDestination sd);

	void memberAddrUpdate(Member m);

	int myPageAddrDelete(ShoppingDestination sd);

	List<ShoppingDestination> myPageAddrChkNum(ShoppingDestination sd);

	List<Member> chkGrade(String id);

	void pointUpdate(Member m);

	void sdDefaultChange(ShoppingDestination sd);

	void sdDefaultChange2(ShoppingDestination sd);

	List<Purchasehistory> myPageOrderList(Purchasehistory ph);

	List<Member> manage_user(int currentPage, int limit);

	int totalCount();

	List<Member> selectSearchMember(String keyword);

	int totaSearchlCount(String keyword);

	int myPageManageUserDelete(Member m);

	List<Member> getRegCount();

	List<Purchasehistory> getOrderCount();

	int totalOrderCount();

	List<Purchasehistory> manage_Order(int currentPage, int limit);

	List<Purchasehistory> myPageOrderListYear(String year, String id);

	List<Purchasehistory> myPageOrderDetailList(Purchasehistory ph);

	int myPageManageOrderChangeStatus(Purchasehistory ph);

	int myPageManageOrderCancle(Purchasehistory ph);

	String manageChk(String my_name);


}
