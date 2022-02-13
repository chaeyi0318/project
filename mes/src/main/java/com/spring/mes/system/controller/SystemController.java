package com.spring.mes.system.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface SystemController {
	public ModelAndView companyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
