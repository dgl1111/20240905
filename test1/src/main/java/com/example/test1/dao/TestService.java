package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import com.example.test1.model.Test;

public interface TestService {
	
	HashMap<String, Object> selectTest(HashMap<String, Object> map); 
	
	HashMap<String, Object> deleteTest(HashMap<String, Object> map); 
	
	HashMap<String, Object> updateTest(HashMap<String, Object> map); 
	
	HashMap<String, Object> insertTest(HashMap<String, Object> map); 
}
