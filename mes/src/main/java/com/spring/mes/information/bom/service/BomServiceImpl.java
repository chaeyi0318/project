package com.spring.mes.information.bom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring.mes.information.bom.dao.BomDAO;
import com.spring.mes.information.bom.vo.BomVO;

@Service("bomService")
public class BomServiceImpl implements BomService {
	@Autowired
	private BomDAO bomDAO;
	
	//BOM리스트
	@Override
	public List bomList(String parentItem) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBom(BomVO bomVO) throws DataAccessException {
		return bomDAO.insertBom(bomVO);
	}

}
