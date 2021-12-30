package com.auribises.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Crop {
	
	public String _id;
	public String userId;
	public double crop;
	public String dateTimeStamp;
	
	public Crop() {
		
	}
	
	public Crop(String userId, double crop) {
		this.userId = userId;
		this.crop = crop;
	}
	
	public Map<String, Object> toMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("crop", crop);
		map.put("dateTimeStamp", new Date());
		return map;
	}
 

	@Override
	public String toString() {
		return "Crop [_id=" + _id + ", userId=" + userId + ", crop=" + crop + "]";
	}

	

}