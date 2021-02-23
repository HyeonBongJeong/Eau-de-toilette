package com.kkkj.eaude.controller;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kkkj.eaude.common.UploadFileUtils;
import com.kkkj.eaude.domain.Basket;
import com.kkkj.eaude.domain.Product;
import com.kkkj.eaude.domain.Purchasehistory;
import com.kkkj.eaude.domain.Review;
import com.kkkj.eaude.service.BasketServiceImpl;
import com.kkkj.eaude.service.MemberService;
import com.kkkj.eaude.service.MemberServiceImpl;
import com.kkkj.eaude.service.ProductServiceImpl;
import com.kkkj.eaude.service.PurchaseSeviceImpl;
import com.kkkj.eaude.service.ReviewServiceImpl;

@Controller
public class ProductController{

	@Resource(name = "uploadPath")
	private String uploadPath;

	private static final int LIMIT = 9;
	@Autowired
	private ProductServiceImpl pService;
	
	@Autowired
	private ReviewServiceImpl rService;
	
	@Autowired
	private MemberServiceImpl meService;
	
	@Autowired
	private BasketServiceImpl bService;
	
	@Autowired
	private PurchaseSeviceImpl phService;
	
	@RequestMapping(value = "productwrite")
	public ModelAndView postGoodRegisterGo(ModelAndView mv) {

		mv.setViewName("productwrite");
		return mv;
	}
	@RequestMapping(value = "header")
	public ModelAndView header(ModelAndView mv) {
		mv.setViewName("Header");
		return mv;
	}

	@RequestMapping(value = "insertproduct.do")
	public ModelAndView insertProduct(ModelAndView mv,MultipartFile file,
			@RequestParam(name = "p_title") String p_title, @RequestParam(name = "p_type") String p_type,
			@RequestParam(name = "p_content") String p_content,@RequestParam(name = "p_size") int p_size,
			@RequestParam(name = "p_intro") String p_intro,
			@RequestParam(name = "p_price") int p_price,MultipartHttpServletRequest request ,HttpSession session) {
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String fileName = null;
		 String path = request.getSession().getServletContext().getRealPath("/resources/uploadimage");

		if (file != null) {
			try {
				fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),path);
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		Product vo = new Product();
		vo.setP_content(p_content);
		vo.setP_type(p_type);
		vo.setP_price(p_price);
		vo.setP_title(p_title);
		vo.setP_intro(p_intro);
		vo.setP_size(p_size);
		vo.setP_img(File.separator + "uploadimage" + File.separator + "imgUpload" + File.separator + "s"+ File.separator + "s_" + fileName);
		
		
		pService.insertProduct(vo);
		mv.setViewName("redirect:productlist.do");
		return mv;
	}

	@RequestMapping(value = "productlist.do")
	public ModelAndView postproductlist(ModelAndView mv, @RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "p_type", required = false,defaultValue ="null") String p_type,
			@RequestParam(name = "keyword", required = false,defaultValue = "null") String keyword) {
		int listCount = 0;
		int startPage = 0;
		int endPage = 0;
		int currentPage = page;
		List<Product>list = new ArrayList<Product>();
		if (page % 5 == 0) {
			startPage = (page / 5 - 1) * 5 + 1;
			endPage = (page / 5) * 5;
		} else if (page % 5 != 0) {
			startPage = (page / 5) * 5 + 1;
			endPage = (page / 5 + 1) * 5;
		}
		if (!keyword.equals("null")) {
			listCount = pService.selectProductSearchCount(keyword);
			list = pService.selectSearchList(currentPage, LIMIT,keyword);
			for(int i=0; i<list.size();i++) {
				int value =list.get(i).getP_price();
				DecimalFormat format = new DecimalFormat("###,###,###");
				list.get(i).setAfterPirce(format.format(value));

			}
			mv.addObject("list",list);
			System.out.println("검색리스트");
		} else if (!p_type.equals("null")){
			System.out.println("태그");
			listCount = pService.selectProductTagCount(p_type);
			list = pService.selectTagProductList(currentPage, LIMIT,p_type);
			for(int i=0; i<list.size();i++) {
				int value =list.get(i).getP_price();
				DecimalFormat format = new DecimalFormat("###,###,###");
				list.get(i).setAfterPirce(format.format(value));
			}
			mv.addObject("list",list);
		}else if(p_type.equals("null")&&keyword.equals("null")) {
			System.out.println("일반리스트");
			listCount = pService.selectProductTotalCount();
			list = pService.selectAllProductList(currentPage, LIMIT);
			for(int i=0; i<list.size();i++) {
				int value =list.get(i).getP_price();
				DecimalFormat format = new DecimalFormat("###,###,###");
				list.get(i).setAfterPirce(format.format(value));
			}
			mv.addObject("list",list);
		}
		try {
			// 한 페이지당 출력할 목록 갯수
			int maxPage = (int) ((double) listCount / LIMIT + 0.9);
			mv.addObject("hotlist", pService.selectHotProductList());
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("maxPage", maxPage);
			mv.addObject("listCount", listCount);
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("msg", e.getMessage());
			mv.setViewName("errorPage");
		}
		mv.setViewName("productlist");
		return mv;
	}

	@RequestMapping(value="product_detail.do") 
	public ModelAndView productdetail(ModelAndView mv,@RequestParam(name="p_id")int p_id) {
		int value=pService.selectProductDetail(p_id).getP_price();
		
		Product pvo = pService.selectProductDetail(p_id);
		DecimalFormat format = new DecimalFormat("###,###,###");
		pvo.setAfterPirce(format.format(value));
		mv.addObject("list",pvo);
		
		
		/*
		 * int listCount=0; int currentBlock = page%4==0 ? page/4:(page/4)+1; int
		 * startPage =0; int endPage=0; if(page%5==0) { startPage = (page/5 -1)*5+1;
		 * endPage= (page/5)*5; }else if(page%5!=0) { startPage = (page/5)*5 +1;
		 * endPage=(page/5 + 1)*5; } try { int currentPage = page; listCount =
		 * rService.totalCount(type); int maxPage = (int) ((double) listCount / LIMIT +
		 * 0.9);
		 * 
		 * mv.addObject("startPage", startPage); mv.addObject("endPage", endPage);
		 * mv.addObject("currentPage", currentPage); mv.addObject("maxPage", maxPage);
		 * mv.addObject("listCount", listCount);
		 * 
		 */
		return mv;
}
	@RequestMapping(value="review_write.do",method = RequestMethod.POST) 
	@ResponseBody
	public String reviewWrite(@RequestParam(name="r_content")String r_content,@RequestParam("file1")MultipartFile file,@RequestParam(name="r_title")String r_title,@RequestParam(name="p_id")int r_ref,MultipartHttpServletRequest request ,HttpSession session) {
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String fileName = null;
		Review vo = new Review();
		 String path = request.getSession().getServletContext().getRealPath("/resources/uploadimage");
		if (file != null) {
			try {
				fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),path);
				vo.setR_img(File.separator + "uploadimage" + File.separator + "imgUpload" + File.separator + "s"+ File.separator + "s_" + fileName);
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		vo.setR_content(r_content);
		vo.setR_title(r_title);
		vo.setR_ref(r_ref);
		rService.reviewWrite(vo);
		return "null";
}
	
	
		@RequestMapping(value="review_detail.do")
		@ResponseBody
		public Object reviewdetail(@RequestParam(name="r_id")int r_id) {
			Map<String, Object> list = new HashMap<String, Object>();
			list.put("list",rService.selectReviewDetail(r_id));
			list.put("commentlist",rService.selectCommentList(r_id));
			return list;
		}
		
	@RequestMapping(value="review_list.do")
	@ResponseBody
	public Object reviewlist(@RequestParam(name="page",required = false,defaultValue ="1")int page,@RequestParam(name="p_id")int r_ref) {
		int listCount = 0;
		int startPage = 0;
		int endPage = 0;
		int currentPage = page;
		if (page % 5 == 0) {
			startPage = (page / 5 - 1) * 5 + 1;
			endPage = (page / 5) * 5;
		} else if (page % 5 != 0) {
			startPage = (page / 5) * 5 + 1;
			endPage = (page / 5 + 1) * 5;
		}
		int listcount = rService.selectreviewcount(r_ref);
		int maxPage = (int) ((double) listcount / LIMIT + 0.9);
		Map<String, Object> list = new HashMap<String, Object>();
		list.put("list",rService.selectreviewlist(page,LIMIT,r_ref));
		list.put("startPage",startPage);
		list.put("endPage", endPage);
		list.put("currentPage",page);
		list.put("maxPage",maxPage);
		return list;
	}
	@RequestMapping(value="reviewcomment_write.do")
	@ResponseBody
	public Object commentwrite(@RequestParam(name="r_ref")int r_ref,@RequestParam(name="r_content")String r_content,@RequestParam(name="p_id")int p_id) {
		
		Review rvo = new Review();
		rvo.setR_ref(r_ref);
		rvo.setR_content(r_content);
		rvo.setM_id("GJWoon");
		rvo.setP_id(p_id);
		int r_id =rService.commentWrite(rvo);
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		String time1 = format1.format(time);
		Map<String, Object> list = new HashMap<String, Object>();
		list.put("m_id",rvo.getM_id());
		list.put("date",time1);
		list.put("content", r_content);
		list.put("r_id",r_id);
		return list;
	}
	
	@RequestMapping(value="findaddress.do",produces = "application/text; charset=utf8")
	@ResponseBody
	public String findaddress(@RequestParam(name="ID")String id) {
		String result=meService.findadd(id);
		System.out.println(result);
		return result;
	}
	
	@RequestMapping(value="	commentdelete.do")
	@ResponseBody
	public void commentdelete(@RequestParam(name="r_id")int r_id) {
		
		rService.deletecomment(r_id);
	}
	@RequestMapping(value="insertBasket.do")
	@ResponseBody
	public void insertBasket(@RequestParam(name="id")String id,@RequestParam(name="p_id")int p_id) {
		Basket vo = new Basket();
		vo.setM_id(id);
		vo.setP_id(p_id);
		bService.insertBasket(vo);
	}
	
	@RequestMapping(value="productBuy.do")
	@ResponseBody
	public void productBuy(@RequestParam(name="m_id")String id,@RequestParam(name="p_id")int p_id,@RequestParam(name="ph_count")int ph_count) {
		Purchasehistory vo = new Purchasehistory();
		vo.setM_id(id);
		vo.setP_id(p_id);
		vo.setPh_count(ph_count);
		phService.insertPurchasehistory(vo);
	}
	
	
	
}

