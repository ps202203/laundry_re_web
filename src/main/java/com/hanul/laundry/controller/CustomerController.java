package com.hanul.laundry.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import common.CommonService;
import customer.CustomerInfoServiceImpl;
import customer.CustomerServiceImpl;
import customer.CustomerVO;

@Controller
public class CustomerController {
	
	@Autowired private CommonService common;
	@Autowired private CustomerServiceImpl service;	
	@Autowired private CustomerInfoServiceImpl services;	
	

	
	//점주별 고객상세정보 목록 가져오기	
	@RequestMapping("/detail.cu")
	public String detail(Integer storeid, Model model) {
		
		service.customer_detail(storeid);
		services.customer_info(storeid);

		
		model.addAttribute("detail", service.customer_detail(storeid));
		model.addAttribute("info", services.customer_info(storeid));
		
		return "customer/detail";
		
	}
	//점주별 매장 정보 가져오기


	
}
