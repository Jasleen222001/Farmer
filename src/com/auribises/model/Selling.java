package com.auribises.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Selling {
	
	public String _id;
	public String userId;
	public double selling;
	public String dateTimeStamp;
	
	public Selling() {
		
	}
	
	public Selling(String userId, double selling) {
		this.userId = userId;
		this.selling = selling;
	}
	
	public Map<String, Object> toMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("selling", selling);
		map.put("dateTimeStamp", new Date());
		return map;
	}
 

	@Override
	public String toString() {
		return "Selling [_id=" + _id + ", userId=" + userId + ", crop=" + selling + "]";
	}

	

}