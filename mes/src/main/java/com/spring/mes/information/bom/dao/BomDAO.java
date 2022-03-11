package com.spring.mes.information.bom.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.mes.information.bom.vo.BomVO;

public interface BomDAO {
	//BOM리스트
	public List bomList() throws DataAccessException;
	//BOM등록
	public int insertBom(BomVO bomVO) throws DataAccessException;
}
