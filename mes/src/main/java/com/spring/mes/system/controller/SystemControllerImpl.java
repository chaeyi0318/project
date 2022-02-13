package com.spring.mes.system.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mes.system.dao.SystemDAO;
import com.spring.mes.system.service.SystemService;
import com.spring.mes.system.vo.CompanyVO;

@Controller("systemController")
public class SystemControllerImpl implements SystemController {
	@Autowired
	private SystemService systemService;
	@Autowired
	private SystemDAO systemDAO;
	@Autowired
	private CompanyVO companyVO;
	
	@Override
	@RequestMapping(value = "/system/companyInfo.do", method = RequestMethod.GET)
	public ModelAndView companyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		System.out.println("viewName : " + viewName);
		companyVO = systemService.companyInfo(companyVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("company", companyVO);
		return mav;
	}

	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}
}
