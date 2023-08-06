package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



import com.model.DBUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.io.IOException;
import java.io.*;
import java.util.*;


public class Chatting {
	DBUtil db = new DBUtil();

	public void Insert_Chat(String gid, String chat, String sender_id)throws Exception {
		Connection conn = null;
				
				try{
				Class.forName("com.mysql.jdbc.Driver");
				conn=(Connection) db.getconnection();
				Date dt = new Date();
//				create table Chats(srno int primary key,grp_id int not null, sender_id int not null,chat varchar(100) not null,date_time datetime not null) ;

//				int gid=Integer.parseInt(request.getParameter("groupID"));
//				String chat=request.getParameter("chat");
//		        int sender_id= Integer.parseInt(request.getParameter("myid"));
				java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				
				PreparedStatement prep_stmt;
				prep_stmt=conn.prepareStatement(" call Add_Chat(?,?,?,?)");
				prep_stmt.setString(1,gid);
				prep_stmt.setString(2,sender_id);
				prep_stmt.setString(3,chat);
				prep_stmt.setObject(4,sdf.format(dt));	
				prep_stmt.execute();
				
				}
				catch(ClassNotFoundException e)
				{
				e.printStackTrace();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
	public ResultSet Get_Chat(HttpServletRequest request)throws Exception {
		Connection conn = null;
				
				try{
				Class.forName("com.mysql.jdbc.Driver");
				conn=(Connection) db.getconnection();
				Statement stmt=conn.createStatement();
				int gid=Integer.parseInt(request.getParameter("group_id"));
				
				ResultSet rs=stmt.executeQuery("select * from chats where grp_id="+gid);
				return rs;

				}
				catch(ClassNotFoundException e)
				{
				e.printStackTrace();
				}catch(SQLException e) {
					e.printStackTrace();
				}
				return null;
			}


}