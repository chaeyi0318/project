package com.spring.mes.system.item.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.spring.mes.system.item.dao.ItemDAO;
import com.spring.mes.system.item.vo.ItemVO;

@Service("itemService")
public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemDAO itemDAO;
	
	//품목정보
	@Override
	public List itemInfo() throws DataAccessException {
		List itemList = null;
		itemList = itemDAO.itemInfo();
		return itemList;
	}

	//품목등록
	@Override
	public int insertItem(ItemVO itemVO) throws DataAccessException {
		return itemDAO.insertItme(itemVO);
	}
}
