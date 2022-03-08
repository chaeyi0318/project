package com.spring.mes.information.bom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface BomController {
	public ModelAndView bomPage(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
