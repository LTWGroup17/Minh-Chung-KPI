package connect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBConnect {
	public static Connection conn;
	public static Connection getConnection(){
		Connection cons=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			cons=DriverManager.getConnection( "jdbc:mysql://localhost:3306/ltw_kpi","root","dinhdang");
		}catch(Exception e){
			e.printStackTrace();
		}
		return cons;
		
	}
	public static void main(String args[])
	{
		
	}


}
