package com.tis.test;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tis.service.SampleService;

@Controller
public class TestController {

	// @Autowired // by type ���� ������. SampleServie Ÿ���� ��ü�� ������ ��������.
	@Resource(name="sampleServiceImpl") // by name ���� ���� �Ѵ�. ���� �̸��� sampleServiceImpl ����
	// �Ǿ� �ִ� ��ü�� ã�� ��������.
	private SampleService sampleService;
	
	
	@RequestMapping("/test")
	public String test(Model model) {
		int tabCnt = sampleService.getTableCount();
		model.addAttribute("msg", "MyShop ������ ���̺� �� : "+tabCnt);
		model.addAttribute("cr", "red");
		return "index";
	}
	
	
	
}
