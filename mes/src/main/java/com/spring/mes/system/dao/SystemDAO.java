package com.spring.mes.system.dao;

import org.springframework.dao.DataAccessException;

import com.spring.mes.system.vo.CompanyVO;

public interface SystemDAO {
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException;
}
