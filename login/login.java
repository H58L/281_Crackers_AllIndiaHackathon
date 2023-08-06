package login;


import java.io.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Servlet implementation class servlet1
 */
public class login extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Hackathon";
	static final String USER = "root";
	static final String PASS="Utkarsha@06";
	private static final long serialVersionUID = 1L;
	public static String Email;
	public static String uname;
	public static String uid;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		
		try{
			
		
		response.setContentType("text/html");
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		uname=request.getParameter("uname");
		Email=request.getParameter("mail");
		uid=request.getParameter("uid");
		String p=request.getParameter("password");
        
		
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("select user_email_id from Users where uid=? and user_name=? and user_email_id=? and user_passward=?");
		prep_stmt.setString(1, uid);
		prep_stmt.setString(2, uname);
		prep_stmt.setString(3, Email);
		prep_stmt.setString(4, p);
		
		ResultSet rs=prep_stmt.executeQuery();
		if(rs.next()) {
			RequestDispatcher rd=request.getRequestDispatcher("menu.jsp");
			rd.forward(request, response);
			
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("loginfailed.jsp");
			rd.forward(request, response);
			
		}
		}
		catch(ClassNotFoundException e)
		{
		e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
