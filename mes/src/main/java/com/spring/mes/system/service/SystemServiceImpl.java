package com.spring.mes.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring.mes.system.dao.SystemDAO;
import com.spring.mes.system.vo.CompanyVO;

@Service("systemService")
public class SystemServiceImpl implements SystemService{
	@Autowired
	private SystemDAO systemDAO;
	
	@Override
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException {
		companyVO = systemDAO.companyInfo(companyVO);
		return companyVO;
	}

}
