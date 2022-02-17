package com.spring.mes.system.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.mes.system.vo.CompanyVO;

public interface SystemController {
	public ModelAndView companyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView insertCompany(@ModelAttribute("company") CompanyVO companyVO,
//									@RequestParam(value="closeDate", required=false) Date closeDate,
									HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView departmentInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView employeeInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView customerInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView itemInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView storageInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView processInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView qualityTestInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
