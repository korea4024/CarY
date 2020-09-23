package com.tis.test;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tis.service.SampleService;

@Controller
public class TestController {

	// @Autowired // by type 으로 주입함. SampleServie 타입의 객체가 있으면 주입해줌.
	@Resource(name="sampleServiceImpl") // by name 으로 주입 한다. 빈의 이름이 sampleServiceImpl 으로
	// 되어 있는 객체를 찾아 주입해줌.
	private SampleService sampleService;
	
	
	@RequestMapping("/test")
	public String test(Model model) {
		int tabCnt = sampleService.getTableCount();
		model.addAttribute("msg", "MyShop 계정의 테이블 수 : "+tabCnt);
		model.addAttribute("cr", "red");
		return "index";
	}
	
	
	
}
