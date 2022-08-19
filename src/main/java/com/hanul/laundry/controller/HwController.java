package com.hanul.laundry.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanul.laundry.command.AnCommand;
import com.hanul.laundry.controller.HwController;

@Controller
public class HwController {
	private static final Logger logger = LoggerFactory.getLogger(HwController.class);
	AnCommand command;
	// 지울 예정
	@RequestMapping(value = "/khjsolution")
	public String khjsolution() {
		return "khjsolution";
	}
	
	@RequestMapping(value = "/partner")
	public String partner() {
		return "partner";
	}
	
	@RequestMapping(value = "/about")
	public String about() {
		
		return "about";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/")
	public String index2() {
		return "index";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}