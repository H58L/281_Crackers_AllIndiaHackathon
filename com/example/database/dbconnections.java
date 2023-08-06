package com.example.database; // Replace "com" with your organization's domain or something more specific

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnections {
 
	private static Connection conn;
	private static Connection getConn() {
		try {
			
			if(conn == null) {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost/Hackathon", "root", "Utkarsha@06");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
