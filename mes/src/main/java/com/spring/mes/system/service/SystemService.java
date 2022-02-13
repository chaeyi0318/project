package com.spring.mes.system.service;

import org.springframework.dao.DataAccessException;

import com.spring.mes.system.vo.CompanyVO;

public interface SystemService {
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException;
}
