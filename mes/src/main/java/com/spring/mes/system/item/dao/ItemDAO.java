package com.spring.mes.system.item.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.mes.system.item.vo.ItemVO;

public interface ItemDAO {
	//품목정보
	public List itemInfo() throws DataAccessException;
	//품목등록
	public int insertItme(ItemVO itemVO) throws DataAccessException;
}
