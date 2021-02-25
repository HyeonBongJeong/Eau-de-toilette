package com.kkkj.eaude.controller;





import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kkkj.eaude.common.Coolsms;
import com.kkkj.eaude.domain.Member;
import com.kkkj.eaude.domain.Purchasehistory;
import com.kkkj.eaude.domain.ShoppingDestination;
import com.kkkj.eaude.service.MypageService;


@Controller
public class MyPageController {

	@Autowired
	private MypageService myService;
	
	
	
	//마이페이지 개인정보 수정 비밀번호 확인 메서드
	@RequestMapping(value = "/myPageTop.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> myPageTop(HttpServletRequest request, HttpServletResponse response, Member m) {
		//String loginId = (String) session.getAttribute("loginId");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Member> list = new ArrayList<Member>();
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			m.setM_id("whb1026");
			list = myService.myPageTop(m);
			String grade = list.get(0).getM_grade();
			int allPoint = list.get(0).getM_allpoint();
			int leastPoint = 0;
			if(grade.equals("샤워코롱") ) {
				leastPoint = 0;
			}else if(grade.equals("오드코롱")) {
				leastPoint = 10000-allPoint;
			}else if(grade.equals("뚜알레")) {
				leastPoint = 50000-allPoint;
				
			}else if(grade.equals("오드퍼퓸")) {
				leastPoint = 100000-allPoint;
				
			}else if(grade.equals("퍼퓸")) {
				leastPoint = 0;
				
			}		
			
				
			map.put("loginMember", list);
			map.put("leastPoint", leastPoint);
		} catch (UnsupportedEncodingException e) {
			map.put("fail", "실패");
			e.printStackTrace();
		}
		
		return map;
	}
	
	//마이페이지 개인정보 수정 화면 이동 메서드
	@RequestMapping(value = "/myPageInfo.do", method = RequestMethod.GET)
	public ModelAndView myPageInfo(ModelAndView mv, HttpSession session) {
		//String loginId = (String) session.getAttribute("loginId");
		mv.setViewName("/mypage_info");
		return mv;
	}
	
	//마이페이지 개인정보 수정 비밀번호 확인 메서드
		@RequestMapping(value = "/myPagePassChk.do", method = RequestMethod.POST)
		@ResponseBody
		public Object myPagePassChk(HttpServletRequest request, HttpServletResponse response, Member m) {
			int result = myService.myPagePassChk(m);
			return result;
		}
		
		
	//마이페이지 개인정보 form 메서드
	@RequestMapping(value ="/mypage_update.do", method = RequestMethod.POST)
	public ModelAndView mypage_update(ModelAndView mv, Member m, HttpSession session, 
			@RequestParam(name="id") String id) {
		//String loginId = (String) session.getAttribute("loginId");
		m.setM_id(id);
		List<Member> list = new ArrayList<Member>();
		list = myService.mypage_update(m);
		System.out.println(list);
		mv.addObject("sessionList", list);
		System.out.println(mv);
		mv.setViewName("/mypage_update");
		return mv;
	}
	//마이페이지 개인정보 수정 이메일 중복 확인 메서드
			@RequestMapping(value = "/myPageEmailChk.do", method = RequestMethod.POST)
			@ResponseBody
			public Object myPageEmailChk(HttpServletRequest request, HttpServletResponse response, Member m) {
				int result = 0;
				result = myService.myPageEmailChk(m);
				System.out.println(myService.myPageEmailChk(m));
				
				return result;
				
			}
	
			
			@ResponseBody
			@RequestMapping(value = "/myPhoneAthor.do", method = RequestMethod.POST)
			public String myPhoneAthor(HttpServletRequest request) throws Exception {

			       String api_key = "NCS29YYBNHGOGMJP";
			       String api_secret = "HMJPHU3VTEHULKCKEG1ZSDZCCV936FA0";
			       Coolsms coolsms = new Coolsms(api_key, api_secret);
			       
			        HashMap<String, String> set = new HashMap<String, String>();
		            set.put("to", (String)request.getParameter("to")); // 수신번호
		 
		            set.put("from", "01083595008"); // 발신번호, jsp에서 전송한 발신번호를 받아 map에 저장한다.
		            set.put("text", "안녕하세요 인증번호는 ["+(String)request.getParameter("text")+"]입니다"); // 문자내용, jsp에서 전송한 문자내용을 받아 map에 저장한다.
		            set.put("type", "sms"); // 문자 타입
		 
		 
		            JSONObject result = coolsms.send(set); // 보내기&전송결과받기
		 
		            if(result.get("status") == (Object)true) {

		              // 메시지 보내기 성공 및 전송결과 출력
		              System.out.println("성공");
		              System.out.println(result.get("group_id")); // 그룹아이디
		              System.out.println(result.get("result_code")); // 결과코드
		              System.out.println(result.get("result_message")); // 결과 메시지
		              System.out.println(result.get("success_count")); // 메시지아이디
		              System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
		            } else {

		              // 메시지 보내기 실패
		              System.out.println("실패");
		              System.out.println(result.get("code")); // REST API 에러코드
		              System.out.println(result.get("message")); // 에러메시지
		            }

			      
			       return "suc";
			     }
			
			
			@RequestMapping(value ="/mypage_personer_info_update.do", method = RequestMethod.POST)
			public ModelAndView mypage_personer_info_updatedate(ModelAndView mv, Member m, HttpSession session, HttpServletRequest request,
					@RequestParam(name="mypage_personer_info_update_id") String id,
					@RequestParam(name="mypage_personer_info_update_new_password", required = false) String password,
					@RequestParam(name="pass_chk", required = false) String pass_chk,
					@RequestParam(name="mypage_personer_info_update_name", required = false) String name,
					@RequestParam(name="mypage_personer_info_update_email", required = false) String email,
					@RequestParam(name="certification_chk_email", required = false) String email_chk,
					@RequestParam(name="mypage_personer_info_update_phone", required = false) String phone,
					@RequestParam(name="certification_chk_phone", required = false) String phone_chk,
					@RequestParam(name="mypage_personer_info_update_gender", required = false) String gender,
					@RequestParam(name="year" , required = false) String year,
					@RequestParam(name="month" , required = false) String month,
					@RequestParam(name="date" , required = false) String date) {
				//String loginId = (String) session.getAttribute("loginId");
				
				//다 널값일때
				m.setM_id(id);
				if(password.equals("") && pass_chk.equals("0") && email_chk.equals("0") && phone_chk.equals("0") && gender.equals("none") && year.equals("") && month.equals("") && date.equals("") ) {
					System.out.println("바꿀거 없음");
				}else{
					//비밀번호가 인증이 되었다면
					if(pass_chk.equals("1")) {
						m.setM_password(password);
					}
					
					//이메일이 인증이 되었다면
					if(email_chk.equals("1")) {
						m.setM_email(email);
					}
					
					//전화번호가 인증이 되었다면
					if(phone_chk.equals("1")) {
						m.setM_phone(phone);
					}
					
					//성별을 골랐다면
					if(!gender.equals("none")) {
						m.setM_gender(gender);
					}
					//생년월일이 안비어있다면
					if(!year.equals("") && !month.equals("") && !date.equals("")) {
						String from = year+month+date;

						SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");

						try {
							Date birth = new Date();
							birth = transFormat.parse(from);
							java.sql.Date birth_day = new java.sql.Date(birth.getTime());
							m.setM_birth(birth_day);
						} catch (ParseException e) {
							e.printStackTrace();
						}
					}
				}
				int result = myService.myPageUpdateInfo(m);
				//리다이렉트로 info로 간다잉
				mv.setViewName("/mypage_update");
				return mv;
			}
			
			
			//마이페이지 구매내역 이동 메서드
			@RequestMapping(value = "/myPageOrderList.do", method = RequestMethod.GET)
			public ModelAndView myPageOrderList(ModelAndView mv, HttpSession session, Purchasehistory ph) {
				//String loginId = (String) session.getAttribute("loginId");
				String id = "GJWoon";
				ph.setM_id(id);
				List<Purchasehistory> list = new ArrayList<Purchasehistory>();
				list = myService.myPageOrderList(ph);
				System.out.println(list);
				mv.addObject("ph-list",list);
				mv.setViewName("/mypage_orderList");
				return mv;
			}
			//마이페이지 구매내역 이동 메서드
			@RequestMapping(value = "/myPageOrderDetail.do", method = RequestMethod.GET)
			public ModelAndView myPageOrderDetail(ModelAndView mv, HttpSession session, Purchasehistory ph) {
				//String loginId = (String) session.getAttribute("loginId");

				mv.setViewName("/mypage_orderDetail");
				return mv;
			}
			
			//마이페이지 배송지 이동 메서드
			@RequestMapping(value = "/mypageShippingDestination.do", method = RequestMethod.GET)
			public ModelAndView mypageShippingDestination(ModelAndView mv, HttpSession session, ShoppingDestination sd) {
				//String loginId = (String) session.getAttribute("loginId");
				List<ShoppingDestination> list = new ArrayList<ShoppingDestination>();
				String id= "whb1026";
				sd.setM_id(id);
				list = myService.mypageShippingDestination(sd);
				mv.addObject("list", list);
				mv.setViewName("/mypage_shipping_destination");
				return mv;
			}
			
			//마이페이지 배송지 팝업 메서드
			@RequestMapping(value = "/mypage_addr_popup.do", method = RequestMethod.GET)
			public ModelAndView mypage_addr_popup(ModelAndView mv, HttpSession session, ShoppingDestination sd, 
					@RequestParam(value="id", defaultValue="")String id) {
				mv.addObject("id",id);
				
				mv.setViewName("/mypage_addr_popup");
				return mv;
			}
			//마이페이지 배송지 업데이트 팝업 메서드
			@RequestMapping(value = "/mypage_addr_update_popup.do", method = RequestMethod.GET)
			public ModelAndView mypage_addr_update_popup(ModelAndView mv, HttpSession session, ShoppingDestination sd, 
					@RequestParam(value="id", defaultValue="")String id,
					@RequestParam(value="sd_id", defaultValue="")String sd_id) {
				mv.addObject("id",id);
				mv.addObject("sd_id",sd_id);
				mv.setViewName("/mypage_addr_update_popup");
				return mv;
			}
			
			//마이페이지 배송지 저장 메서드
			
			@RequestMapping(value = "/mypageAddrInsert.do", method = RequestMethod.GET)
			public ModelAndView mypageAddrInsert(ModelAndView mv, HttpSession session, ShoppingDestination sd, 
					@RequestParam(name="id") String id,
					@RequestParam(name="pop_addr") String addr,
					@RequestParam(name="pop_detail_addr") String pop_detail_addr,
					@RequestParam(name="pop_name") String pop_name,
					@RequestParam(name="pop_phone") String pop_phone) {
				sd.setM_id(id);
				sd.setSd_addr(addr+" "+pop_detail_addr);
				sd.setSd_name(pop_name);
				sd.setSd_phone(pop_phone);
				sd.setSd_addr_nickname("배송지");
				myService.mypageAddrInsert(sd);
				
				mv.setViewName("redirect:mypageShippingDestination.do");
				return mv;
			}
			//마이페이지 기본 배송지 수정 메서드
			@RequestMapping(value = "/mypageAddrUpdate.do", method = RequestMethod.GET)
			public ModelAndView mypageAddrUpdate(ModelAndView mv, HttpSession session,Member m, ShoppingDestination sd, 
					@RequestParam(name="id") String id,
					@RequestParam(name="sd_id") String sd_id,
					@RequestParam(name="pop_addr") String addr,
					@RequestParam(name="pop_detail_addr") String pop_detail_addr,
					@RequestParam(name="pop_name") String pop_name,
					@RequestParam(name="pop_phone") String pop_phone) {
				sd.setM_id(id);
				sd.setSd_id(sd_id);
				sd.setSd_addr(addr+" "+pop_detail_addr);
				sd.setSd_name(pop_name);
				sd.setSd_phone(pop_phone);
				m.setM_id(id);
				m.setM_addr(addr+" "+pop_detail_addr);
				System.out.println(sd);
				myService.mypageAddrUpdate(sd);
				myService.memberAddrUpdate(m);
				
				
				mv.setViewName("redirect:mypageShippingDestination.do");
				return mv;
			}
			
			
			
			//마이페이지 배송지 삭제 메서드
			@ResponseBody
			@RequestMapping(value = "/myPageAddrDelete.do", method = RequestMethod.POST)
			public Object myPageAddrDelete(ModelAndView mv, HttpSession session, ShoppingDestination sd) {
				int a = myService.myPageAddrDelete(sd);
				return a;
			}
			
			//마이페이지 배송지 개수 체크 메서드
			@ResponseBody
			@RequestMapping(value = "/myPageAddrChkNum.do", method = RequestMethod.POST)
			public Object myPageAddrChkNum(ModelAndView mv, HttpSession session, HttpServletResponse response, ShoppingDestination sd) {
				int a = 0;
				List<ShoppingDestination> list = new ArrayList<ShoppingDestination>(); 
				list = myService.myPageAddrChkNum(sd);
				System.out.println(list.size());
				if(list.size() >= 5) {
					a=1;
				}else {
					a=0;
				}
				return a;
			}
			
			//마이페이지 기본배송지 바꾸기 메서드
			@ResponseBody
			@RequestMapping(value = "/myPageAddrChangeDeault.do", method = RequestMethod.POST)
			public void myPageAddrChangeDeault(ModelAndView mv, HttpSession session, HttpServletResponse response, ShoppingDestination sd, Member m) {
				myService.memberAddrUpdate(m);
				myService.sdDefaultChange(sd);
			}
			@ResponseBody
			@RequestMapping(value = "/myPageAddrChangeDeault2.do", method = RequestMethod.POST)
			public void myPageAddrChangeDeault2(ModelAndView mv, HttpSession session, HttpServletResponse response, ShoppingDestination sd) {
				myService.sdDefaultChange2(sd);
			}
			
			
			//마이페이지 리뷰 이동 메서드
			@RequestMapping(value = "/myPageReview.do", method = RequestMethod.GET)
			public ModelAndView myPageReview(ModelAndView mv, HttpSession session) {
				//String loginId = (String) session.getAttribute("loginId");
				mv.setViewName("/mypage_point");
				return mv;
			}
			//마이페이지 관리자 회원관리 메서드
			@RequestMapping(value = "/myPageManageUser.do", method = RequestMethod.GET)
			public ModelAndView myPageManageUser(ModelAndView mv, HttpSession session) {
				//String loginId = (String) session.getAttribute("loginId");
				mv.setViewName("/mypage_manager_user");
				return mv;
			}
			//마이페이지 관리자 주문관리 메서드
			@RequestMapping(value = "/myPageManageOrder.do", method = RequestMethod.GET)
			public ModelAndView mypage_manager_order(ModelAndView mv, HttpSession session) {
				//String loginId = (String) session.getAttribute("loginId");
				mv.setViewName("/mypage_manager_order");
				return mv;
			}
			
			
			
	
}


