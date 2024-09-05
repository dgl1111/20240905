package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test1.mapper.TestMapper;
import com.example.test1.model.Test;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	TestMapper testMapper;

	@Override
	public HashMap<String, Object> selectTest(HashMap<String, Object> map) {
		HashMap<String, Object> resultMap =  testMapper.testList(map);
		
		
		return resultMap;
	}

	@Override
	public HashMap<String, Object> deleteTest(HashMap<String, Object> map) {
		HashMap<String, Object> resultMap = testMapper.deleteList(map);
		
		return resultMap;
	}

	@Override
	public HashMap<String, Object> updateTest(HashMap<String, Object> map) {
		HashMap<String, Object> resultMap = testMapper.updateList(map);
		
		return resultMap;
	}

}
