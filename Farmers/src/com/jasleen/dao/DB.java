package com.jasleen.dao;

import java.util.ArrayList;

import org.bson.BsonObjectId;
import org.bson.Document;
import org.bson.types.ObjectId;

import com.jasleen.model.Wheat;
import com.jasleen.model.User;
import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCursor;

// Mongo DB Code :)
public class DB {
	
	MongoClient mongoClient;

	public DB() {
		try {
			String connectionURL = "mongodb+srv://atpl:atpl@cluster0.eh8zx.gcp.mongodb.net/jasleen?retryWrites=true&w=majority";
	    	mongoClient = MongoClients.create(connectionURL);
	    	
	    	System.out.println(getClass().getSimpleName()+" MongoDB Connection Created and Reference to Client Object Obtained");
	    	
		} catch (Exception e) {
			System.out.println("Something Went Wrong: "+e);
		}
		
	}
	

	
	public boolean registerUser(User user) {
		
		Document document = new Document(user.toMap());
    	
    	//Insert into DataBase
    	mongoClient.getDatabase("jasleen").getCollection("users").insertOne(document);
    	System.out.println(user.getName()+" Regsitere in MongoDB :)");
		
		return true;
	}
	
	public boolean logWheat(Wheat wheat) {
		
		Document document = new Document(wheat.toMap());
    	
    	//Insert into DataBase
    	mongoClient.getDatabase("jasleen").getCollection("wheats").insertOne(document);
    	System.out.println(wheat.userId+" "+wheat.wheat+" wheat harvested data Saved in MongoDB");
		
		return true;
	}
	
	public boolean loginUser(User user) {
		
		System.out.println("[DB] User Data:"+user);
		
		BasicDBObject query = new BasicDBObject();
		query.put("email", user.email);
		query.put("password", user.password);
		
    	// Fetching the Data
    	MongoCursor<Document> cursor = mongoClient.getDatabase("jasleen").getCollection("users").find(query).iterator();
    	
    	
    	
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
	
	public void updateWheat(double wheat, String wheatId) {
			
		BasicDBObject query = new BasicDBObject();
		query.put("wheatId", wheatId);
		
    	MongoCursor<Document> cursor = mongoClient.getDatabase("jasleen").getCollection("wheats").find(query).iterator();
    	Document document = cursor.next();
    	
    	document.put("wheat", wheat);
    	
    	//Update into DataBase
    	mongoClient.getDatabase("jasleen").getCollection("wheats").updateOne(query, document);
    	System.out.println("wheats Updated");
		
	}
	
	public void deleteWheat(String wheatId) {
		
		System.out.println("[DB] Deleting wheat:"+wheatId);
		
		BasicDBObject query = new BasicDBObject();
		
		query.put("_id", new ObjectId(wheatId));
		
    	// Fetching the Data
    	mongoClient.getDatabase("jasleen").getCollection("wheats").deleteOne(query);
    	
	}
	
	
	public void fetchUsers() {
		
		try {
			MongoCursor<Document> cursor = mongoClient.getDatabase("jasleen").getCollection("admin").find().iterator();
	    	while(cursor.hasNext()) {
	    		//System.out.println(cursor.next());
	    		System.out.println(cursor.next().toJson());
	    	}
		}catch(Exception e) {
			System.out.println("Something Went Wrong: "+e);
		}
    	
	}
	
	public ArrayList<Wheat> fetchWheats(String userId) {
		
		ArrayList<Wheat> wheatRecords = new ArrayList<Wheat>();
		
		try {
			
			BasicDBObject query = new BasicDBObject();
			query.put("userId", userId);
			
	    	MongoCursor<Document> cursor = mongoClient.getDatabase("jasleen").getCollection("wheats").find(query).iterator();
	    	while(cursor.hasNext()) {
	    		
	    		Document document = cursor.next();
	    		Wheat wheat = new Wheat();
	    		wheat._id = document.getObjectId("_id").toString();
	    		wheat.userId = document.getString("userId");
	    		wheat.dateTimeStamp = document.getDate("dateTimeStamp").toString();
	    		wheat.wheat = document.getDouble("wheat");
	    		
	    		wheatRecords.add(wheat);
	    		
	    	}
		}catch(Exception e) {
			System.out.println("Something Went Wrong: "+e);
		}
		
		return wheatRecords;
    	
	}
	
	
	
}
