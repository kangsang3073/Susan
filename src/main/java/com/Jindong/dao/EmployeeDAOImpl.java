package com.Jindong.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.Jindong.dto.EmployeeDTO;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.Jindong.mappers.employeeMapper";

	@Override
	public EmployeeDTO userCheck(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeDAOImpl userCheck()");
		
		return sqlSession.selectOne(namespace+".userCheck", employeeDTO);
	}

	@Override
	public List<EmployeeDTO> list(EmployeeDTO employeeDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".list", employeeDTO);
	}
	
	@Override
	public void insert(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeDAOImpl insert()");
		//메서드 호출
		sqlSession.insert(namespace+".insert", employeeDTO);
		
	}
	
	@Override
	public EmployeeDTO update(int num) {
		return sqlSession.selectOne(namespace+".update", num);
	}

	@Override
	public void updatePro(EmployeeDTO employeeDTO) {
		
		sqlSession.update(namespace+".updatePro", employeeDTO);
	}

	@Override
	public void delete(int num) {
		
		sqlSession.delete(namespace+".deletePro", num);
	}
}
