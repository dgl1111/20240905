package com.example.test1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test1.model.Test;

@Mapper
public interface TestMapper {
	
	 HashMap<String, Object> testList(HashMap<String, Object> map);
	 
	 HashMap<String, Object> deleteList(HashMap<String, Object> map);
	 
	 HashMap<String, Object> updateList(HashMap<String, Object> map);
	
}
