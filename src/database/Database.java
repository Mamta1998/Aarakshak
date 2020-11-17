package database;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.*;

import javax.imageio.stream.FileImageInputStream;

public class Database {
	Connection conn;
	public Database() throws ClassNotFoundException, SQLException {
		conn=DBConnection.getConnection();	
	}
	
	// method for inserting data into register table used for FIR complaint
	public String register(register_pojo obj) throws SQLException
	{
		Random rand=new Random();
		int number=rand.nextInt(1000);

		String trackId=obj.getTrackId()+number; 

		String register_query="insert into register (Name,ContactNo,Address,AadharNo,Complaint,TrackID,DateRecieved,DateRecentlyUpdated,question,answer,policeStation) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement myStmt=conn.prepareStatement(register_query);
		
		myStmt.setString(1,obj.getName());
		myStmt.setString(2,obj.getContact());
		myStmt.setString(3,obj.getAddress());
		myStmt.setString(4,obj.getAadharNo());
		myStmt.setString(5,obj.getComplaint());
		myStmt.setString(6,trackId);
		myStmt.setString(7,obj.getDateRecieved());
		myStmt.setString(8,obj.getDateRecentlyUpdated());
		myStmt.setString(9,obj.getQuestion());
		myStmt.setString(10,obj.getAnswer());
		myStmt.setString(11,obj.getPoliceStation());
		
		myStmt.execute();
		
		return trackId;
}
	
	// method for updating status of Fir complaint
	public void updateComplain(register_pojo obj) throws SQLException
	{

		String update="Update register set Status=? ,DateRecentlyUpdated=? where TrackID =?";
		PreparedStatement myStmt=conn.prepareStatement(update);
		
		myStmt.setString(1,obj.getStatus());
		myStmt.setString(2,obj.getDateRecentlyUpdated());
		myStmt.setString(3,obj.getTrackId());
		
		myStmt.executeUpdate();

	}
	
	// method for inserting data into feedback table
	public void feedback(feedback_pojo obj) throws SQLException
	{
		String feedback_query="insert into feedback (Name,ContactNo,Experience,Feedback,DateRecieved) values(?,?,?,?,?)";
		PreparedStatement myStmt=conn.prepareStatement(feedback_query);
		
		myStmt.setString(1,obj.getName());
		myStmt.setString(2,obj.getContact());
		myStmt.setString(3,obj.getExperience());
		myStmt.setString(4,obj.getFeedback());
		myStmt.setString(5,obj.getDateRecieved());
		
		myStmt.execute();

	}
	
	//method for updating feedback status
	public void updateFeedback(feedback_pojo obj) throws SQLException
	{

		String update="Update feedback set Status=? where ContactNo=?";
		PreparedStatement myStmt=conn.prepareStatement(update);
		myStmt.setString(1,obj.getStatus());
		myStmt.setString(2,obj.getContact());
		
		myStmt.executeUpdate();

	}
	
	// method for inserting data into contactUs table
	public void contact(Contact_pojo obj) throws SQLException
		{
			String contact_query="insert into contact (Name,ContactNo,Message,DateRecieved,policeStation) values(?,?,?,?,?)";
			PreparedStatement myStmt=conn.prepareStatement(contact_query);
			
			myStmt.setString(1,obj.getName());
			myStmt.setString(2,obj.getContactNo());
			myStmt.setString(3,obj.getMessage());
			myStmt.setString(4,obj.getDateRecieved());
			myStmt.setString(5,obj.getPoliceStation());
			myStmt.execute();
		}
	
	//method for updating contactUs status
	public void updateContact(Contact_pojo obj) throws SQLException
		{

			String update="Update contact set Status=? where ContactNo=?";
			PreparedStatement myStmt=conn.prepareStatement(update);
			
			myStmt.setString(1,obj.getStatus());
			myStmt.setString(2,obj.getContactNo());
			
			myStmt.executeUpdate();

		}
		// method for inserting data into register table used for flimshooting table
	public String filmShootingRequest(FlimShootingPojo obj) throws SQLException
	{
		 
		Random rand=new Random();
		int number=rand.nextInt(1000);

		String trackId=obj.getTrackid()+number; 

		String query="insert into flimshooting (policeCity,policeAddress,shootingLocation,name,designation,companyName,companyAddress,shootingDate,shootingTime,totalMember,TrackId,signature,phoneNumber,dateRecieved,dateRecentlyUpdated,question,answer,policeStation,aadharNo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement myStmt=conn.prepareStatement(query);
		myStmt.setString(1,obj.getPoliceCity());
		myStmt.setString(2,obj.getPoliceAddress());
		myStmt.setString(3,obj.getShootingLocation());
		myStmt.setString(4,obj.getName());
		myStmt.setString(5,obj.getDesignation());
		myStmt.setString(6,obj.getCompanyName());
		myStmt.setString(7,obj.getCompanyAddress());
		myStmt.setString(8,obj.getShootingDtae());
		myStmt.setString(9,obj.getShootingTime());
		myStmt.setString(10,obj.getMembers());
		myStmt.setString(11,trackId);
		myStmt.setString(12,obj.getSignature());
		myStmt.setString(13,obj.getContact());
		myStmt.setString(14,obj.getDateRecieved());
		myStmt.setString(15,obj.getDateRecentlyUpdated());
	    myStmt.setString(16,obj.getQuestion());
		myStmt.setString(17,obj.getAnswer());
		myStmt.setString(18,obj.getPoliceStation());
		myStmt.setString(19,obj.getAadharNo());
		
		myStmt.execute();
		 
		System.out.println("database done");
		return trackId;

	}
	
	//// method for updating status of filmshooting request
	public void updateFlimShooting(FlimShootingPojo obj) throws SQLException
	{

		String update="Update flimshooting set status=? ,dateRecentlyUpdated=? where TrackId=?";
		PreparedStatement myStmt=conn.prepareStatement(update);
		myStmt.setString(1,obj.getStatus());
		myStmt.setString(2,obj.getDateRecentlyUpdated());
		myStmt.setString(3,obj.getTrackid());
		myStmt.executeUpdate();

	}
	
	//// method for inserting data into register table used for protest request table
	public String protestRequest(ProtestPojo obj) throws SQLException
	{
		 
		Random rand=new Random();
		int number=rand.nextInt(1000);

		String trackId=obj.getTrackId()+number; 

		String query="insert into protest (line1,TrackId,line2,line3,subject,content,signature,name,designation,phoneNumber,policeStation,question,answer,dateRecieved,dateRecentlyUpdated,aadharNo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement myStmt=conn.prepareStatement(query);
		myStmt.setString(1,obj.getLine1());
		myStmt.setString(2,trackId);
		myStmt.setString(3,obj.getLine2());
		myStmt.setString(4,obj.getLine3());
		myStmt.setString(5,obj.getSubject());
		myStmt.setString(6,obj.getContent());
		myStmt.setString(7,obj.getSignature());
		myStmt.setString(8,obj.getName());
		myStmt.setString(9,obj.getDesignation());
		myStmt.setString(10,obj.getContact());
		myStmt.setString(11,obj.getPoliceStation());
		myStmt.setString(12,obj.getQuestion());
		myStmt.setString(13,obj.getAnswer());
		myStmt.setString(14,obj.getDateRecieved());
		myStmt.setString(15,obj.getDateRecentlyUpdated());
		myStmt.setString(16,obj.getAadharNo());
		
		myStmt.execute();
		 
		System.out.println("database done");
		return trackId;

	}
	
	// method for updating status of protest request
	public void updateProtest(ProtestPojo obj) throws SQLException
	{

		String update="Update protest set status=? ,dateRecentlyUpdated=? where TrackId=?";
		PreparedStatement myStmt=conn.prepareStatement(update);
		
		myStmt.setString(1,obj.getStatus());
		myStmt.setString(2,obj.getDateRecentlyUpdated());
		myStmt.setString(3,obj.getTrackId());
		
		myStmt.executeUpdate();

	}
	
	// method for inserting data into register table used for procession table
	public String processionRequest(ProcessionPojo obj) throws SQLException
	{
		 
		Random rand=new Random();
		int number=rand.nextInt(1000);

		String trackId=obj.getTrackId()+number; 

		String query="insert into procession (line1,TrackId,line2,line3,subject,content,signature,name,designation,phoneNumber,policeStation,question,answer,dateRecieved,dateRecentlyUpdated,aadharNo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement myStmt=conn.prepareStatement(query);
		myStmt.setString(1,obj.getLine1());
		myStmt.setString(2,trackId);
		myStmt.setString(3,obj.getLine2());
		myStmt.setString(4,obj.getLine3());
		myStmt.setString(5,obj.getSubject());
		myStmt.setString(6,obj.getContent());
		myStmt.setString(7,obj.getSignature());
		myStmt.setString(8,obj.getName());
		myStmt.setString(9,obj.getDesignation());
		myStmt.setString(10,obj.getContact());
		myStmt.setString(11,obj.getPoliceStation());
		myStmt.setString(12,obj.getQuestion());
		myStmt.setString(13,obj.getAnswer());
		myStmt.setString(14,obj.getDateRecieved());
		myStmt.setString(15,obj.getDateRecentlyUpdated());
		myStmt.setString(16,obj.getAadharNo());
		
		myStmt.execute();
		 
		System.out.println("database done");
		return trackId;

	}
	
	// method for updating status of procession request
	public void updateProcession(ProcessionPojo obj) throws SQLException
	{

		String update="Update procession set status=? ,dateRecentlyUpdated=? where TrackId=?";
		PreparedStatement myStmt=conn.prepareStatement(update);
		
		myStmt.setString(1,obj.getStatus());
		myStmt.setString(2,obj.getDateRecentlyUpdated());
		myStmt.setString(3,obj.getTrackId());
		
		myStmt.executeUpdate();

	}
	
	// method for inserting data into admin table used for creating new user
		public void newUser(AdminPojo obj) throws SQLException
		{
			
			String query="insert into admin(adminID,password,role,email,policeStation) values(?,?,?,?,?)";
			
			PreparedStatement myStmt=conn.prepareStatement(query);
			String test = obj.getPoliceStation();
			System.out.println(test);
			
			myStmt.setString(1,obj.getId());
			myStmt.setString(2,obj.getPassword());
			myStmt.setString(3,obj.getRole());
			myStmt.setString(4,obj.getEmail());
			myStmt.setString(5,obj.getPoliceStation());
			
			myStmt.execute();
			
	}
		
		//inserting data into tenant table
		
				public String tenant(Tenant_Pojo obj) throws SQLException
				{
					
					Random rand=new Random();
					int number=rand.nextInt(1000);

					String trackId=obj.getTrack()+number; 

					String query="insert into tenant(Lname,LphoneNo,LAdd,Tname,Tfathername,Tphone,TcurrentAdd,totalMemeber,PemanentAdd,policestation,dateRecieved,dateRecentlyUpdated,aadharNo,TofficeAdd,TrackId,question,answer) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					
					PreparedStatement myStmt=conn.prepareStatement(query);
					String test = obj.getPoliceStation();
					System.out.println(test);
					
					myStmt.setString(1,obj.getLName());
					myStmt.setString(2,obj.getLPhoneNo());
					myStmt.setString(3,obj.getLAdd());
					myStmt.setString(4,obj.getTName());
					myStmt.setString(5,obj.getTFatherName());
					myStmt.setString(6,obj.getTPhoneNo());
					myStmt.setString(7,obj.getTCurrentAdd());
					myStmt.setString(8,obj.getTotalMember());
					myStmt.setString(9,obj.getTPermanentAdd());
					myStmt.setString(10,obj.getPoliceStation());
					myStmt.setString(11,obj.getDateRecieved());
					myStmt.setString(12,obj.getDateRecentlyUpdated());
					myStmt.setString(13,obj.getAadharNo());
					myStmt.setString(14,obj.getTOfficeAdd());
					myStmt.setString(15,trackId);
					myStmt.setString(16,obj.getQuestion());
					myStmt.setString(17,obj.getAnswer());
					
					myStmt.execute();
					return trackId;
					
			}
				
				
				//inserting data into domestic table
				
				public String domestic(DomesticHelpPojo obj) throws SQLException
				{
					
					Random rand=new Random();
					int number=rand.nextInt(1000);

					String trackId=obj.getTrack()+number; 

					String query="insert into domesticHelp(hName,hPhone,hAddress,caste,religion,gender,hAadhar,pName,pContact,pAddress,Name,contact,address,aadhar,policestation,dateRecived,dateRecentlyUpdated,TrackId,question,answer) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					
					PreparedStatement myStmt=conn.prepareStatement(query);
				
					myStmt.setString(1,obj.gethName());
					myStmt.setString(2,obj.gethContact());
					myStmt.setString(3,obj.gethAddress());
					myStmt.setString(4,obj.getCaste());
					myStmt.setString(5,obj.getReligion());
					myStmt.setString(6,obj.getGender());
					myStmt.setString(7,obj.gethAadhar());
					myStmt.setString(8,obj.getpName());
					myStmt.setString(9,obj.getpContact());
					myStmt.setString(10,obj.getpAddress());
					myStmt.setString(11,obj.getName());
					myStmt.setString(12,obj.getContact());
					myStmt.setString(13,obj.getAddress());
					myStmt.setString(14,obj.getAadhar());						
					myStmt.setString(15,obj.getPoliceStation());
					myStmt.setString(16,obj.getDateRecieved());
					myStmt.setString(17,obj.getDateRecentlyUpdated());					
					myStmt.setString(18,trackId);
					myStmt.setString(19,obj.getQuestion());
					myStmt.setString(20,obj.getAnswer());
					
					myStmt.execute();
					return trackId;
					
			}
				
				//method for updating contactUs status
				public void updateDomestic(DomesticHelpPojo obj) throws SQLException
					{

						String update="Update domesticHelp set status=?,dateRecentlyUpdated=? where TrackId=?";
						PreparedStatement myStmt=conn.prepareStatement(update);
						
						myStmt.setString(1,obj.getStatus());
						myStmt.setString(2,obj.getDateRecentlyUpdated());
						myStmt.setString(3,obj.getTrack());
						
						myStmt.executeUpdate();

					}
				
				
				// method for updating status of tenant verification form
				public void updateTenant(Tenant_Pojo obj) throws SQLException
				{

					String update="Update tenant set status=? ,dateRecentlyUpdated=? where TrackId=?";
					PreparedStatement myStmt=conn.prepareStatement(update);
					
					myStmt.setString(1,obj.getStatus());
					myStmt.setString(2,obj.getDateRecentlyUpdated());
					myStmt.setString(3,obj.getTrack());
					
					myStmt.executeUpdate();

				}

				
//inserting data into employee table
				
				public String employee(EmployeePojo obj) throws SQLException
				{
					
					Random rand=new Random();
					int number=rand.nextInt(1000);

					String trackId=obj.getTrackId()+number; 

					String query="insert into employee(eName,ePhone,eEmail,ePermanent,eCurrent,eDistrict,eState,eReligion,eDOB,eGender,ePhysical,eBlood,eAadhar,Name,contact,Address,organization,organizationAddress,aadhar,policestation,dateRecieved,dateRecentlyUpdated,TrackId,email,question,answer) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					
					PreparedStatement myStmt=conn.prepareStatement(query);
					
					myStmt.setString(1,obj.geteName());
					myStmt.setString(2,obj.geteContact());
					myStmt.setString(3,obj.geteEmail());
					myStmt.setString(4,obj.getePermannent());
					myStmt.setString(5,obj.geteCurrent());
					myStmt.setString(6,obj.getDistrict());
					myStmt.setString(7,obj.getState());
					myStmt.setString(8,obj.geteReligion());
					myStmt.setString(9,obj.geteDOB());
					myStmt.setString(10,obj.geteGender());
					myStmt.setString(11,obj.getePhysical());
					myStmt.setString(12,obj.geteBloodGroup());
					myStmt.setString(13,obj.geteAadhar());
					myStmt.setString(14,obj.getName());						
					myStmt.setString(15,obj.getContact());
					myStmt.setString(16,obj.getAddress());
					myStmt.setString(17,obj.getOrganization());		
					myStmt.setString(18,obj.getOrganizationAdd());		
					myStmt.setString(19,obj.getAadhar());		
					myStmt.setString(20,obj.getPolicestation());		
					myStmt.setString(21,obj.getDateRecieved());		
					myStmt.setString(22,obj.getDateRecentlyUpdated());		
					myStmt.setString(23,trackId);
					myStmt.setString(24,obj.getEmail());
					myStmt.setString(25,obj.getQuestion());
					myStmt.setString(26,obj.getAnswer());
					
					
					myStmt.execute();
					return trackId;
					
			}
				
				// method for updating status of Employee verification form
				public void updateEmployee(EmployeePojo obj) throws SQLException
				{

					String update="Update employee set status=? ,dateRecentlyUpdated=? where TrackId=?";
					PreparedStatement myStmt=conn.prepareStatement(update);
					
					myStmt.setString(1,obj.getStatus());
					myStmt.setString(2,obj.getDateRecentlyUpdated());
					myStmt.setString(3,obj.getTrackId());
					
					myStmt.executeUpdate();

				}

	}
