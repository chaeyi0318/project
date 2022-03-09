package com.spring.mes.information.bom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.information.bom.vo.BomVO;

public interface BomController {
	//BOM페이지
	public ModelAndView bomPage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//BOM리스트
	public ModelAndView bomList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//BOM등록
	public ModelAndView insertBom(@ModelAttribute("bom") BomVO bomVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
