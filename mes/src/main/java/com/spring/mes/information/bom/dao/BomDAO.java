package com.spring.mes.information.bom.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface BomDAO {
	//BOM리스트
	public List bomList(String parentItem) throws DataAccessException;
}
