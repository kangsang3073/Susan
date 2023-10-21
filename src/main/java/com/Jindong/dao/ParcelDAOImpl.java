package com.Jindong.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.Jindong.dto.ParcelDTO;

@Repository
public class ParcelDAOImpl implements ParcelDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.Jindong.mappers.parcelMapper";
	
	@Override
	public void insert(ParcelDTO parcelDTO) {
		System.out.println("ParcelDAOImpl insert()");
		//메서드 호출
		sqlSession.insert(namespace+".insert", parcelDTO);
		
	}

	@Override
	public List<ParcelDTO> list(ParcelDTO parcelDTO) {
		return sqlSession.selectList(namespace+".list", parcelDTO);
	}

	@Override
	public ParcelDTO update(int num) {
		return sqlSession.selectOne(namespace+".update", num);
	}

	@Override
	public void updatePro(ParcelDTO parcelDTO) {
		
		sqlSession.update(namespace+".updatePro", parcelDTO);
	}

	@Override
	public void delete(int num) {
		
		sqlSession.delete(namespace+".deletePro", num);
	}
	
	

}
