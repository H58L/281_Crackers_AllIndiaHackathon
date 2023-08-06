package signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class signup extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Hackathon";
	static final String USER = "root";
	static final String PASS="Utkarsha@06";
	private static final long serialVersionUID = 1L;
	public static String uname;
	public static int  userid;
	public static String Email;
	public static String password;
	public static String Interest;
	public static String  collegename;
	public static String  myinfo;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		try{
	
		String query = " insert into Users(uid,user_name,MYINFO,user_email_id,user_passward,user_interests,user_college)"+" values(?,?,?,?,?,?,?)";
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		
		uname=request.getParameter("sname");
		userid=Integer.parseInt(request.getParameter("uid"));
		Email=request.getParameter("mail");
		myinfo=request.getParameter("info");
	    password=request.getParameter("password");
		Interest=request.getParameter("options");
		collegename=request.getParameter("cname");
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement(query);
		prep_stmt.setInt(1,userid);
		prep_stmt.setString(2,uname);
		prep_stmt.setString(3,myinfo);
		prep_stmt.setString(4,Email);
		prep_stmt.setString(5,password);
		prep_stmt.setString(6,Interest);
		prep_stmt.setString(7,collegename);
		
		

		
		
		int rs=prep_stmt.executeUpdate();
		System.out.println(rs);
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
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
