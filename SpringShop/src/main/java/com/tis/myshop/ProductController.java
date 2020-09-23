package com.tis.myshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tis.domain.ProductVO;
import com.tis.service.ShopService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProductController {
	
	@Autowired
	private ShopService shopSvc;
	
	
	@RequestMapping(value="/prodPspec", method=RequestMethod.GET)
	public String productByPspec(Model model, @RequestParam(defaultValue="") String pspec) {
		// String pspec = req.getParameter("pspec");
		List<ProductVO> plist = shopSvc.selectByPspec(pspec);
		
		model.addAttribute("hitList", plist);
		System.out.println("pspec == "+pspec);
		return "shop/mallHit";
		// /WEB-INF/views/shop/mallhit.jsp
	}
	
	// 매핑
	// log level: info < debug < warn < error
	
	@RequestMapping(value="/prodDetail") // default 가 get 임.
	public String productView(Model model, @RequestParam(defaultValue="0") int pnum) {
		log.info("pnum = "+pnum);
		// 유효성 체크
		if(pnum==0) {
			return "redirect:index";
		}
		
		ProductVO prod = shopSvc.selectByPnum(pnum);
		model.addAttribute("prod", prod);
		
		return "shop/productView";
	}
}
