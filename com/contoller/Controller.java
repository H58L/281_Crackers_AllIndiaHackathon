package com.contoller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.io.IOException;
import com.model.DBUtil;
import com.helper.*;

@WebServlet(
		urlPatterns = { "/Controller" }
		)
public class Controller extends HttpServlet{
	private static final long serialVersionUID = 1L;
	DBUtil objdbutil;
	HttpSession session ;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("submit");
		if(action.equals("Send"))
		{
			System.out.println("in Controller : send //chat");
			Chatting c = new Chatting();
			String gid=request.getParameter("groupID1");
			String chat=request.getParameter("chat");
			String sender_id= request.getParameter("myid");
			try {
				c.Insert_Chat(gid, chat, sender_id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("ChatPage.jsp").forward(request, response);
		}
	}
}
