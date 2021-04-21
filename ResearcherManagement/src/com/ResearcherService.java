package com;

import model.Researcher; 

//For REST Service
import javax.ws.rs.*; 
import javax.ws.rs.core.MediaType; 

//For JSON
import com.google.gson.*; 

//For XML
import org.jsoup.*; 
import org.jsoup.parser.*; 
import org.jsoup.nodes.Document; 

@Path("/Researchers") 
public class ResearcherService {
	
	
	Researcher researcherObj = new Researcher(); 
	
	//Reading Researcher details
	
	
	@GET
	@Path("/") 
	@Produces(MediaType.TEXT_HTML) 
	public String readUsers() 
	 { 
		return researcherObj.readUsers(); 
	 } 
	
	//Inserting Researcher details
	
	@POST
	@Path("/") 
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String insertUser(@FormParam("name") String name, 
			 @FormParam("surname") String surname, 
			 @FormParam("email") String email,
			 @FormParam("gender") String gender,
			 @FormParam("productType") String productType,
			 @FormParam("phoneNo") String phoneNo
			 )
			  
	{ 
		String output = researcherObj.insertUsers(name, surname, email, gender, productType,phoneNo); 
		return output; 
	}
	
	
	
	
	
	//Updating Researcher Details
	
//	@PUT
//	@Path("/") 
//	@Consumes(MediaType.APPLICATION_JSON) 
//	@Produces(MediaType.TEXT_PLAIN) 
//	public String updateUsers(String researcherData) 
//	{ 
//		//Convert the input string to a JSON object 
//		JsonObject researcherObj = new JsonParser().parse(researcherData).getAsJsonObject(); 
//		
//		//Read the values from the JSON object
//		String userID = researcherObj.get("userID").getAsString(); 
//		String name = researcherObj.get("name").getAsString(); 
//		String surname = researcherObj.get("surname").getAsString(); 
//		String email = researcherObj.get("email").getAsString(); 
//		String gender = researcherObj.get("gender").getAsString();
//		String productType = researcherObj.get("productType").getAsString();
//		String phoneNo = researcherObj.get("phoneNo").getAsString();
//		
//		String output = researcherObj.updateUsers(userID, name, surname, email, gender, productType, phoneNo); 
//	
//		return output; 
//	}
	

	
	
	//Deleting Researcher Details
	

	@DELETE
	@Path("/") 
	@Consumes(MediaType.APPLICATION_XML) 
	@Produces(MediaType.TEXT_PLAIN) 
	public String deleteUser(String researcherData) 
	{ 
		//Convert the input string to an XML document
		Document doc = Jsoup.parse(researcherData, "", Parser.xmlParser()); 
	 
		//Read the value from the element <userID>
		String userID = doc.select("userID").text(); 
		String output = researcherObj.deleteUsers(userID); 
		return output; 
	}
	
	

}
