package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConexion {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
			String url = "jdbc:mysql://localhost:3306/instituto?"
					+ "useSSL=false&useTimezone=true&serverTimezone=UTC";
			String usr = "root";
			String psw = "1234";
			
			con = DriverManager.getConnection(url, usr, psw);
			
		}catch (ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e) {
			     // TODO Auto-generated catch block
			     e.printStackTrace();
		}catch(Exception e) {
	     // TODO Auto-generated catch block
			e.printStackTrace();
	   }
		return con;
		
	}
	
	public static void closeConexion(Connection con) {
		try {
			con.close();
		} catch (Exception e) {
			System.out.println("Problema al cerrar la conexión");
		}
	}
}
