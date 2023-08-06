package Myservlet;

import jakarta.servlet.RequestDispatcher;
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
import login.login;
public class Myservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public  String cname;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       

       
        String url = "jdbc:mysql://localhost/Hackathon";
        String username = "root";
        String password = "Utkarsha@06";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);
            cname=request.getParameter("hvalue");
            // Insert the data into the MySQL table
            String sql = " insert into mycommunities(username,community)"+" values(?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, login.uname);
            pstmt.setString(2, cname);
            pstmt.executeUpdate();

            pstmt.close();
            conn.close();

            RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
