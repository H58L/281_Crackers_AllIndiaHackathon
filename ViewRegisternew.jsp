<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.*"%>
<%@page import="login.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Display The Contents Of Table</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
  }
 body {
  min-height: 100vh;
  background: url(https://img.freepik.com/premium-photo/scientific-molecule-background-with-flow-waves-medicine-science-technology-chemistry-wallpaper-banner-with-dna-molecules-geometric-dynamic-linear-waves-illustration_230610-1050.jpg?w=2000) no-repeat;
  background-size: cover;
  background-position: center;
}

table {
  border-collapse: collapse;
  width: 100%;
  margin-top: 50px;
  text-align: center;
}

td {
  display: inline-block; /* Display the cells side by side */
  text-align: left;
  padding: 8px;
}

th {
  background-color: transparent;
}

h1 {
  position: absolute;
  top: -30px;
  left: 44%;
  margin-top: 50px;
  color: black;
  text-align: center;
}

.candidate-box {
  border: 2px solid #0f0e0e;
  padding: 10px;
  margin: 10px;
  border-radius: 6px;
  background-color: #fff;
  text-align: center;
  min-width: 250px;
  display: inline-block; /* Display the boxes side by side */
}

.candidate-box h2 {
  font-size: 3em;
  margin: 15px 0 10px 0;
}

.vote {
  width: 110px;
  height: 40px;
  background: transparent;
  border: 2px solid #0f0e0e;
  outline: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 1.1em;
  color: rgb(9, 8, 8);
  font-weight: 500;
  margin: 5px auto;
  transition: .5s;
  display: inline-block;
}

.candidate-box button {
  display: inline-block;
}

.vote:hover {
  background-color: rgb(15, 15, 15);
  color: rgb(253, 243, 243);
}

.container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin: 10px;
  background-color: transparent;
  background-filter: blur(20px);
  border: 2px solid #0f0e0e;
  padding: 10px;
  width: 400px;
  border-radius: 10px;
}

  

 
</style>

</head>
  <body>
  


    <h1>Resources</h1>
    <table>
      <tr>
      </tr>

      <% 
      Connection conn = null;
      Statement stmt = null; 
      ResultSet rs=null; 
      try{ 
    	  Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Hackathon","root","Utkarsha@06");
      stmt = conn.createStatement(); 
      
  
      PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("select name,topic,type,urllink from refrence ");
		
	
	   rs=prep_stmt.executeQuery();
	   while(rs.next()){
		   %>
		       <tr>
		         <td>
		           <div class="candidate-box">
		             <h2><%=rs.getString(1) %></h2>
		             <p><%=rs.getString(2) %></p>
		            <p><%=rs.getString(3) %></p>
		        <p> <a href="<%=rs.getString(4) %>">Open me</a></p>
		           </div>
		         </td>
		       </tr>
		   <%
		     }} catch(Exception e){ e.printStackTrace(); } %>
    </table>
   
  </body>
  