package com.spring.mes.system.item.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.system.item.service.ItemService;
import com.spring.mes.system.item.vo.ItemVO;

@Controller("itemController")
public class ItemControllerImpl implements ItemController {
	@Autowired
	private ItemService itemService;

	//품목정보
	@Override
	@RequestMapping(value = {"/system/itemInfo.do", "/information/itemPopup.do"}, method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView itemInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html;text/charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		List itemList = itemService.itemInfo();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("itemList", itemList);
		return mav;
	}

	//품목등록
	@Override
	@RequestMapping(value = "/system/insertItem.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView insertItem(ItemVO itemVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html;text/charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		int result = 0;
		result = itemService.insertItem(itemVO);
		ModelAndView mav = new ModelAndView("redirect:/information/itemInfo.do");
		return mav;
	}
	
	//BOM품목팝업
	
}
