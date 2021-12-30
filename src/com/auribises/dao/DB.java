package com.auribises.dao;



import java.util.ArrayList;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.auribises.model.Crop;
import com.auribises.model.Selling;
import com.auribises.model.User;
import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCursor;
import java.util.Scanner;

// Mongo DB Code :)
public class DB {
	
	MongoClient mongoClient;

	public DB() {
		try {
			String connectionURL = "mongodb+srv://atpl:atpl@cluster0.ckeme.mongodb.net/gw2021pj1?retryWrites=true&w=majority";
	    	mongoClient = MongoClients.create(connectionURL);
	    	
	    	System.out.println(getClass().getSimpleName()+" MongoDB Connection Created and Reference to Client Object Obtained");
	    	
		} catch (Exception e) {
			System.out.println("Something Went Wrong: "+e);
		}
		
	}
	

	
	public boolean registerUser(User user) {
		
		Document document = new Document(user.toMap());
    	
    	//Insert into DataBase
    	mongoClient.getDatabase("gw2021pj1").getCollection("users").insertOne(document);
    	System.out.println(user.getName()+" Regsitered in MongoDB :)");
		
		return true;
	}
	
	public boolean logCrop(Crop crop) {
		
		Document document = new Document(crop.toMap());
    	
    	//Insert into DataBase
    	mongoClient.getDatabase("gw2021pj1").getCollection("crops").insertOne(document);
    	System.out.println(crop.userId+" "+crop.crop+" crop harvested data Saved in MongoDB");
		
		return true;
	}
public boolean logSelling(Selling selling) {
		
		Document document = new Document(selling.toMap());
    	
    	//Insert into DataBase
    	mongoClient.getDatabase("gw2021pj1").getCollection("selling").insertOne(document);
    	System.out.println(selling.userId+" "+selling.selling+" selling price  data Saved in MongoDB");
		
		return true;
	}
	
	public boolean loginUser(User user) {
		
		System.out.println("[DB] User Data:"+user);
		
		BasicDBObject query = new BasicDBObject();
		query.put("email", user.email);
		query.put("password", user.password);
		
    	// Fetching the Data
    	MongoCursor<Document> cursor = mongoClient.getDatabase("gw2021pj1").getCollection("users").find(query).iterator();
    	
    	
    	
    	//while(cursor.hasNext()) {
    	//	System.out.println(cursor.next().toJson());
    	//}
		
		
    	boolean flag = cursor.hasNext();
    	if(flag) {
    		//System.out.println(cursor.next().toJson());
    		Document document = cursor.next();
    		System.out.println(document.getObjectId("_id"));
    		System.out.println(document.getString("name"));
    		
    		user._id = document.getObjectId("_id").toString();
    		user.name = document.getString("name");
    		
    		System.out.println("[DB] User Data After Successful Login:"+user);
    		
    	}
		
		return flag;
	}
	
	public void updateCrop(Double crop, String cropId) {
			
		BasicDBObject query = new BasicDBObject();
		query.put("cropId", cropId);
		
    	MongoCursor<Document> cursor = mongoClient.getDatabase("gw2021pj1").getCollection("crops").find(query).iterator();
    	Document document = cursor.next();
    	
    	document.put("crop", crop);
    	
    	//Update into DataBase
    	mongoClient.getDatabase("gw2021pj1").getCollection("crops").updateOne(query, document);
    	System.out.println("crops Updated");
		
	}
	
	public void deleteCrop(String cropId) {
		
		System.out.println("[DB] Deleting wheat:"+cropId);
		
		BasicDBObject query = new BasicDBObject();
		
		query.put("_id", new ObjectId(cropId));
		
    	// Fetching the Data
    	mongoClient.getDatabase("gw2021pj1").getCollection("crops").deleteOne(query);
    	
	}
	
	
	public void fetchUsers() {
		
		try {
			MongoCursor<Document> cursor = mongoClient.getDatabase("gw2021pj1").getCollection("admin").find().iterator();
	    	while(cursor.hasNext()) {
	    		//System.out.println(cursor.next());
	    		System.out.println(cursor.next().toJson());
	    	}
		}catch(Exception e) {
			System.out.println("Something Went Wrong: "+e);
		}
    	
	}
	
	public ArrayList<Crop> fetchCrops(String userId) {
		
		ArrayList<Crop> cropRecords = new ArrayList<Crop>();
		
		try {
			
			BasicDBObject query = new BasicDBObject();
			query.put("userId", userId);
			
	    	MongoCursor<Document> cursor = mongoClient.getDatabase("gw2021pj1").getCollection("crops").find(query).iterator();
	    	while(cursor.hasNext()) {
	    		
	    		Document document = cursor.next();
	    		Crop crop = new Crop();
	    		crop._id = document.getObjectId("_id").toString();
	    		crop.userId = document.getString("userId");
	    		crop.dateTimeStamp = document.getDate("dateTimeStamp").toString();
	    		crop.crop = document.getDouble("crop");
	    		
	    	 cropRecords.add(crop);
	    		
	    	}
		}catch(Exception e) {
			System.out.println("Something Went Wrong: "+e);
		}
		
		return cropRecords;
    	
	}
}
	/*public boolean ProfitLoss(Crop crop) {
	{
		BasicDBObject query = new BasicDBObject();
		MongoCursor<Document> cursor = mongoClient.getDatabase("gw2021pj1").getCollection("crops").find(query).iterator();
	  
		
	            	
	 
			if(cp-sp>0)
	                {
			  System.out.println("loss:" +(cp-sp));
			}
			else if(cp-sp<0)
	                {
			  System.out.println("profit:" +(sp-cp));
			}
			else
			
			  System.out.println("NEUTRAL");
	          
	   }
	}
	ArrayList<Crop> cropRecords = new ArrayList<Crop>();
	
	try {
		
		BasicDBObject query = new BasicDBObject();
		query.put("userId", userId);
		
    	MongoCursor<Document> cursor = mongoClient.getDatabase("gw2021pj1").getCollection("crops").find(query).iterator();
    	while(cursor.hasNext()) {
    		
    		Document document = cursor.next();
    		Crop crop = new Crop();
    		crop._id = document.getObjectId("_id").toString();
    		crop.userId = document.getString("userId");
    		crop.dateTimeStamp = document.getDate("dateTimeStamp").toString();
    		crop.crop = document.getDouble("crop");
    		
    	 cropRecords.add(crop);
    		
    	}
	}catch(Exception e) {
		System.out.println("Something Went Wrong: "+e);
	}
	
	return cropRecords;
	
}
*/
