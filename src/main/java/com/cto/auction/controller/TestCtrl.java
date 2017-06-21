package com.cto.auction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cto.auction.service.TestService;
import com.cto.auction.vo.TestVO;

@Controller
public class TestCtrl {
	@Autowired(required = false)
	private TestService service;

	@RequestMapping("/testhome")
	public String testCtrlMethod(@ModelAttribute("testCtrlModelAttribute") TestVO sch, Model d) {
		d.addAttribute("acHomeJSP", service.testSrvcMethod(sch));
		return "testHome";
	}
}
