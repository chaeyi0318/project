package com.spring.mes.system.dao;

import java.util.List;


import org.springframework.dao.DataAccessException;

import com.spring.mes.system.vo.CompanyVO;
import com.spring.mes.system.vo.CustomerVO;
import com.spring.mes.system.vo.DeptVO;


public interface SystemDAO {
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException;		//회사정보
	public int insertCompany(CompanyVO companyVO) throws DataAccessException;		//회사등록
	public List departmentInfo() throws DataAccessException;		//부서리스트
	public int insertDept(DeptVO deptVO) throws DataAccessException;		//부서등록
	public List employeeInfo() throws DataAccessException;		//사원리스트
	public List customerInfo() throws DataAccessException;		//거래처리스트
	public List itemInfo() throws DataAccessException;		//품목리스트
	public List processInfo() throws DataAccessException;		//공정리스트
	public List storageInfo() throws DataAccessException;		//창고리스트
	public List qualityTestInfo() throws DataAccessException;		//검사유형리스트
}