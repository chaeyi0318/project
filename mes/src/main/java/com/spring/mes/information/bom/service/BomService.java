package com.spring.mes.information.bom.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.mes.information.bom.vo.BomVO;

public interface BomService {
	//BOM리스트
	public List bomList(String parentItem) throws DataAccessException;
	//BOM 등록
	public int insertBom(BomVO bomVO) throws DataAccessException;
}
