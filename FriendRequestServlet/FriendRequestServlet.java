package FriendRequestServlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import login.login;


public class FriendRequestServlet extends HttpServlet {
	
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    
    // Your database connection details
    String dbUrl = "jdbc:mysql://localhost/Hackathon";
    String dbUsername = "root";
    String dbPassword = "Utkarsha@06";
    String sender=login.uname;
    
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
      String reciverid=request.getParameter("fruid");
      String recivername=request.getParameter("frname");
      PrintWriter out = response.getWriter();
      out.print("Friend request sent successfully."+reciverid);
      
      out.print("Friend request sent successfully."+sender);
      // Insert Vijay's data into the "friend" table
      String insertQuery = "INSERT INTO friend (sname,friend_id,friend_name) VALUES (?,?,?)";
      PreparedStatement pstmt = conn.prepareStatement(insertQuery);
      pstmt.setString(1,sender);
      pstmt.setString(2, reciverid);
      pstmt.setString(3, recivername);
      pstmt.executeUpdate();

      conn.close();

      // Send a response to the client indicating success
      response.setStatus(HttpServletResponse.SC_OK);
      
      RequestDispatcher rd=request.getRequestDispatcher("connected_success.jsp");
		rd.forward(request, response);
    } catch (Exception e) {
      e.printStackTrace();

      // Send a response to the client indicating failure
      response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
      PrintWriter out = response.getWriter();
      out.print("Failed to send friend request.");
      out.flush();
    }
  }
}
