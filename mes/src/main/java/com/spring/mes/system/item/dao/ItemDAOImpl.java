package com.spring.mes.system.item.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.mes.system.item.vo.ItemVO;

@Repository("itemDAO")
public class ItemDAOImpl implements ItemDAO {
	@Autowired
	private SqlSession sqlSession;
	
	//품목정보
	@Override
	public List itemInfo() throws DataAccessException {
		List<ItemVO> itemList = null;
		itemList = sqlSession.selectList("mapper.item.selectAllItem");
		return itemList;
	}

	//품목등록
	@Override
	public int insertItme(ItemVO itemVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.item.insertItem", itemVO);
		return result;
	}

}
