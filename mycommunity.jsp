<%@page import="java.sql.*"%>
<%@page import="com.*"%>
<%@page import="login.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>See Friends</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #afd1f4;
        }
        .friends-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
        }
        .friend {
            padding: 10px;
            border: 1px solid #101010;
            margin-bottom: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .friend .friend-name {
            flex-grow: 1;
        }
        .send-request-btn {
            background-color: #2c8ccc;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }
        .sent {
            background-color: #2c8ccc;
        }
        .header-container {
            display: flex;
            align-items: center;
        }

        .header-container img {
            height: 50px;
            width:  50px;
        }

        .Logo {
            margin-left: 10px; 
        }
        
header {
  background-color: #010409;
  color: white;
  text-align: center;
  padding: 1rem;
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 1rem;
}

.friends-list {
  list-style: none;
  padding: 0;
}

li {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0.5rem 0;
  border-bottom: 1px solid #ccc;
}

.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.Logo {
    margin: 0;
}

.navigation {
    display: flex;
}

.navigation a {
    color: #fff;
    text-decoration: none;
    margin: 0 10px;
}

.navigation a:hover {
    text-decoration: underline;
}

.btnLogin-popup {
    background-color: #fff;
    color: #007bff;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 1rem;
}
table {
  width: 100%;
  border-collapse: collapse;
}

td, th {
  padding: 10px;
  text-align: left;
}

td:last-child {
  text-align: center; /* Center the buttons in the last column */
}

.send-request-btn {
  background-color: #2c8ccc;
  color: white;
  border: none;
  padding: 8px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  cursor: pointer;
  border-radius: 4px;
}

.sent {
  background-color: #2c8ccc;
  opacity: 0.6;
  pointer-events: none; /* Disable the button when it is 'sent' */
}

/* ... The rest of the CSS ... */

/* Table Styles */
.friends-table-container {
  max-width: 600px;
  margin: 0 auto;
}

.friends-table {
  width: 100%;
  border-collapse: collapse;
  background-color: #ffffff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  border-radius: 6px;
}

.friends-table thead {
  background-color: #f1f1f1;
}

.friends-table th, .friends-table td {
  padding: 12px 16px;
  text-align: left;
}

.friends-table th {
  font-weight: bold;
  color: #333333;
}

.friends-table tbody tr:nth-child(even) {
  background-color: #f9f9f9;
}

/* Button Styles */
.send-request-btn {
  background-color: #3897f0;
  color: white;
  border: none;
  padding: 8px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  cursor: pointer;
  border-radius: 6px;
  transition: background-color 0.2s ease-in-out;
}

.send-request-btn:hover {
  background-color: #3182c5;
}

.send-request-btn.sent {
  background-color: #2c8ccc;
  opacity: 0.6;
  pointer-events: none;
}
h1{
    position: relative;
}
body {
    font-family: Arial, sans-serif;
    background-color: #afd1f4;
    margin: 0;
    padding: 0;
}

header {
    background-color: #010409;
    color: white;
    text-align: center;
    padding: 1rem;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 1rem;
}

.friends-table-container {
    max-width: 600px;
    margin: 20px auto;
}

.friends-table {
    width: 100%;
    border-collapse: collapse;
    background-color: #ffffff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border-radius: 6px;
}

.friends-table thead {
    background-color: #f1f1f1;
}

.friends-table th,
.friends-table td {
    padding: 12px 16px;
    text-align: left;
}

.friends-table th {
    font-weight: bold;
    color: #333333;
}

.friends-table tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

/* Button Styles */
.send-request-btn {
    background-color: #3897f0;
    color: white;
    border: none;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    cursor: pointer;
    border-radius: 6px;
    transition: background-color 0.2s ease-in-out;
}

.send-request-btn:hover {
    background-color: #3182c5;
}

.send-request-btn.sent {
    background-color: #2c8ccc;
    opacity: 0.6;
    pointer-events: none;
}

    </style>
</head>
<body>
    <header>
        <div class="header-container">
            <!-- <img src="./LOGO.png" alt=""> -->
            <div class="logo">Hubbers</div>
            <nav class="navigation">
                <a href="home.jsp">Home</a>
                <a href="about.jsp">About</a>
                <a href="ViewRegisternew.jsp">Books</a>
                <a href="ChatPage.jsp">ChatRoom</a>
            </nav>   
        </div>
    </header>
    <h1>My Communities</h1>
    <div class="friends-table-container">
    <table class="friends-table" border="1">
        <thead>
      <tr>
        <th>community</th>
      </tr>
    </thead>
    <tbody>
      <% Connection conn = null; 
      Statement stmt = null;
     
      ResultSet rs=null;
      try{ 
    	  Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Hackathon","root","Utkarsha@06");
      stmt = conn.createStatement(); 
      
  
      String q="select community from mycommunities where username= ?";
      PreparedStatement pstmt = conn.prepareStatement(q);
      pstmt.setString(1, login.uname);
      rs = pstmt.executeQuery();
      while(rs.next()){
    	  %>
    	    <div class="row">
    	    <div class="column">
    	  <table >
      <tr>
      
        <td><%=rs.getString(1) %></td>
       
       <br>
     </td>
    
      </tr>
     
       </table>
       </div>
       </div>
       

      <% } } catch(Exception e){ e.printStackTrace(); } %>
    </tbody>
    </table>



  

  
</body>
</html>