package bean;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
public class ConnectionManager {

         
   public static Connection getConnection() throws Exception {
	    
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection(
				"jdbc:mysql://127.0.0.1/db_sis","root","123456");
		return con;
	}

	public static void cleanUp(Statement st, Connection con) {
		try {
			if (st != null) {
				st.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}