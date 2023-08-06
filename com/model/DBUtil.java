package com.model;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBUtil 
{
	public Connection conn=null;
	public Connection getconnection()throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");//u2H40or9dQ,G5X0wr2jCY
		// edit md
		conn = DriverManager.getConnection("jdbc:mysql://localhost/Hackathon", "root", "Utkarsha@06");
		System.out.println("conn created");
		return conn;
	}

}
