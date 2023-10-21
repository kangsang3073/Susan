package com.Jindong.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.Jindong.dto.SaleDTO;

@Repository
public class SaleDAOImpl implements SaleDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.Jindong.mappers.saleMapper";
	
	@Override
	public void insert(SaleDTO saleDTO) {
		System.out.println("SaleDAOImpl insert()");
		//메서드 호출
		sqlSession.insert(namespace+".insert", saleDTO);
		
	}

	@Override
	public List<SaleDTO> list(SaleDTO saleDTO) {
		return sqlSession.selectList(namespace+".list", saleDTO);
	}

	@Override
	public SaleDTO update(int num) {
		return sqlSession.selectOne(namespace+".update", num);
	}

	@Override
	public void updatePro(SaleDTO saleDTO) {
		
		sqlSession.update(namespace+".updatePro", saleDTO);
	}

	@Override
	public void delete(int num) {
		
		sqlSession.delete(namespace+".deletePro", num);
	}
	
	

}
