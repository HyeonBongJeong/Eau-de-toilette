package com.kkkj.eaude.controller;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
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
import com.kkkj.eaude.domain.Product;
import com.kkkj.eaude.domain.Review;
import com.kkkj.eaude.service.ProductServiceImpl;
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
		System.out.println(page);
		int listcount = rService.selectreviewcount(r_ref);
		int maxPage = (int) ((double) listcount / LIMIT + 0.9);
		Map<String, Object> list = new HashMap<String, Object>();
		System.out.println(rService.selectreviewlist(page,LIMIT,r_ref).get(0).getR_adddate());
		list.put("list",rService.selectreviewlist(page,LIMIT,r_ref));
		list.put("startPage",startPage);
		list.put("endPage", endPage);
		list.put("currentPage",page);
		list.put("maxPage",maxPage);
		return list;
	}
	
	
}

