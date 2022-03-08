package com.spring.mes.system.item.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.system.item.vo.ItemVO;

public interface ItemController {
	//품목정보
	public ModelAndView itemInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//품목등록
	public ModelAndView insertItem(@ModelAttribute("item") ItemVO itemVO,
										HttpServletRequest request, HttpServletResponse response) throws Exception;
}
