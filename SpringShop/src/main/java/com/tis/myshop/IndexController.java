package com.tis.myshop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 2.5 이후 생긴 방식
// POJO(Plain Old Java Object) 객체로 컨트롤러를 만든다.
@Controller
public class IndexController {
	
	@RequestMapping("/top")
	public void showTop() {
		// 뷰네임을 문자열로 반환하지 않을 경우\
		// 요청매핑 "/top" 앞에 접두어를 붙이고, 뒤에는 접미어를 붙여 이동한다.
		// WEB-INF/views/top.jsp
	}
	
	@RequestMapping("/foot")
	public void showFoot() {
		
	}
	
	@RequestMapping("/carousel")
	public void showCarousel() {
		
	}
	
	// /index 로 요청이 오면 home() 메소드가 실행 되고 index.jsp 를 보여줌.
	@RequestMapping(value="/index")
	public String home(Model mv) {
		
		mv.addAttribute("msg", "From IndexController");
		mv.addAttribute("cr", "blue");
		return "index"; // 뷰이름을 반환.
		// WEB-INF/views/index.jsp 를 찾아감.
	}
}
