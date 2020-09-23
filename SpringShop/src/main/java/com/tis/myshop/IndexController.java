package com.tis.myshop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 2.5 ���� ���� ���
// POJO(Plain Old Java Object) ��ü�� ��Ʈ�ѷ��� �����.
@Controller
public class IndexController {
	
	@RequestMapping("/top")
	public void showTop() {
		// ������� ���ڿ��� ��ȯ���� ���� ���\
		// ��û���� "/top" �տ� ���ξ ���̰�, �ڿ��� ���̾ �ٿ� �̵��Ѵ�.
		// WEB-INF/views/top.jsp
	}
	
	@RequestMapping("/foot")
	public void showFoot() {
		
	}
	
	@RequestMapping("/carousel")
	public void showCarousel() {
		
	}
	
	// /index �� ��û�� ���� home() �޼ҵ尡 ���� �ǰ� index.jsp �� ������.
	@RequestMapping(value="/index")
	public String home(Model mv) {
		
		mv.addAttribute("msg", "From IndexController");
		mv.addAttribute("cr", "blue");
		return "index"; // ���̸��� ��ȯ.
		// WEB-INF/views/index.jsp �� ã�ư�.
	}
}
