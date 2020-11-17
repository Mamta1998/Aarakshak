package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		String url="jdbc:mysql://localhost:3306/aarakshak";
		String user="root";
		String password="root";
		Class.forName("com.mysql.jdbc.Driver");
		Connection myCon=DriverManager.getConnection(url,user,password);
		System.out.println("Connection Successful");
		return myCon;
	}

}
