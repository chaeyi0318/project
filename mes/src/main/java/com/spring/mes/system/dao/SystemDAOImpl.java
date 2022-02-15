package com.spring.mes.system.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.mes.system.vo.CompanyVO;

@Repository("systemDAO")
public class SystemDAOImpl implements SystemDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public CompanyVO companyInfo(CompanyVO companyVO) throws DataAccessException {
		return sqlSession.selectOne("mapper.company.selectCompany");
	}

	@Override
	public int insertCompany(CompanyVO companyVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.company.insertCompany", companyVO);
		return result;
	}
}