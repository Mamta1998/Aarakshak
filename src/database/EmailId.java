package database;
import com.email.durgesh.*;
public class EmailId {
	public  void  resetPassword(AdminPojo obj)
	{
		try {
			Email e=new Email("garima202004@gmail.com","garima@2220202");
			e.setFrom("garima202004@gmail.com","Aarakshak");
			e.setSubject("Reset Password");
			String message="Your Password is "+obj.getPassword();
			e.setContent("<p>"+message+"</p>","text/html");
			e.addRecipient(obj.getEmail());
			e.send();
		}
		catch(Exception e)
		{
			e.getMessage();
		}


	}

}
