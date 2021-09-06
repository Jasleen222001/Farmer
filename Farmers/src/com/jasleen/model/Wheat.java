package com.jasleen.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Wheat {
	
	public String _id;
	public String userId;
	public double wheat;
	public String dateTimeStamp;
	
	public Wheat() {
		
	}
	
	public Wheat(String userId, double wheat) {
		this.userId = userId;
		this.wheat = wheat;
	}
	
	public Map toMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("wheat", wheat);
		map.put("dateTimeStamp", new Date());
		return map;
	}
 

	@Override
	public String toString() {
		return "Wheat [_id=" + _id + ", userId=" + userId + ", wheat=" + wheat + "]";
	}

	

}