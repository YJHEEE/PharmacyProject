package carrot.common.jdbc;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	
	public static final int ERROR_CODE_USER_DUPLE = 100; // 유저 id 중복인 경우

	public static String driverClass = null;
	public static String url = null;
	public static String user = null;
	public static String password = null;
	public static Properties qProp = null;
	
	static {
		Properties prop = new Properties();

		String path = JDBCTemplate.class.getResource("./data-source.properties").getPath();
		path = path.replace("%20", " ");
		
		try {
			FileReader fr = new FileReader(path);
			prop.load(fr);
			fr.close();

			driverClass = prop.getProperty("driverClass");
			url = prop.getProperty("url");
			user = prop.getProperty("user");
			password = prop.getProperty("password");
			Class.forName(driverClass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		try {
		
			path = JDBCTemplate.class.getResource("./carrot-query.properties").getPath();
			path = path.replace("%20", " ");
			
			qProp = new Properties();
			FileReader fr;
			
			try {
				fr = new FileReader(path);
				qProp.load(fr);
				fr.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public static Properties getDBProperties() {
		return qProp;
	}

	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("conn : " + conn);
		return conn;
	}
	
	public static void commit(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.commit();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void rollback(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.rollback();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement statusment) {
		try {
			if(statusment != null && !statusment.isClosed()) {
				statusment.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet resultSet) {
		try {
			if(resultSet != null && !resultSet.isClosed()) {
				resultSet.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		JDBCTemplate.getConnection();
		System.out.println("!!");
	}
	
}
