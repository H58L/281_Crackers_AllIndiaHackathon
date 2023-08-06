package resource;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class resource extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Hackathon";
	static final String USER = "root";
	static final String PASS="Utkarsha@06";
	private static final long serialVersionUID = 1L;
	public static String name;
	public static String topic;
	public static String type;
	public static String link;

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		try{
	
		String query = " insert into refrence(name,topic,type,urllink)"+" values(?,?,?,?)";
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		
		name=request.getParameter("name");
		topic=request.getParameter("topic");
		type=request.getParameter("type");
	    link=request.getParameter("url");
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement(query);
		
		prep_stmt.setString(1,name);
		prep_stmt.setString(2,topic);
		prep_stmt.setString(3,type);
		prep_stmt.setString(4,link);
	
		
		

		
		
		int rs=prep_stmt.executeUpdate();
		System.out.println(rs);
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("menu.jsp");
			rd.forward(request, response);
			
		}
		else {
			out.println("<font color=red size=18 background-color: #d7e4f0> login failed!!<br>");
			out.println("<a href=voterlogin.jsp> Try Again!!</a>");
			
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
