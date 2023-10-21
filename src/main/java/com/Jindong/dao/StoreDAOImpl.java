package com.Jindong.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.Jindong.dto.StoreDTO;

@Repository
public class StoreDAOImpl implements StoreDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.Jindong.mappers.storeMapper";
	
	@Override
	public void insert(StoreDTO storeDTO) {
		System.out.println("StoreDAOImpl insert()");
		//메서드 호출
		sqlSession.insert(namespace+".insert", storeDTO);
		
	}

	@Override
	public List<StoreDTO> list(StoreDTO storeDTO) {
		return sqlSession.selectList(namespace+".list", storeDTO);
	}

	@Override
	public StoreDTO update(int num) {
		return sqlSession.selectOne(namespace+".update", num);
	}

	@Override
	public void updatePro(StoreDTO storeDTO) {
		
		sqlSession.update(namespace+".updatePro", storeDTO);
	}

	@Override
	public void delete(int num) {
		
		sqlSession.delete(namespace+".deletePro", num);
	}
	
	

}
