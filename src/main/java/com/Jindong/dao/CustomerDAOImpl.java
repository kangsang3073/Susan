package com.Jindong.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.Jindong.dto.CustomerDTO;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.Jindong.mappers.customerMapper";
	
	@Override
	public void insert(CustomerDTO customerDTO) {
		System.out.println("CustomerDAOImpl insert()");
		//메서드 호출
		sqlSession.insert(namespace+".insert", customerDTO);
		
	}

	@Override
	public List<CustomerDTO> list(CustomerDTO customerDTO) {
		return sqlSession.selectList(namespace+".list", customerDTO);
	}

	@Override
	public CustomerDTO update(int num) {
		return sqlSession.selectOne(namespace+".update", num);
	}

	@Override
	public void updatePro(CustomerDTO customerDTO) {
		
		sqlSession.update(namespace+".updatePro", customerDTO);
	}

	@Override
	public void delete(int num) {
		
		sqlSession.delete(namespace+".deletePro", num);
	}
	
	

}
