<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat,java.util.Date,java.text.DateFormat"
	import="com.model.*,com.Controller.*" %>
	<%@ page import="login.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chat Page</title>
<link rel="stylesheet" href="Chatpage.css">
</head>
<body>
	<header>
		<div class="header-container">
			<h1 class="Logo">Let's Chat</h1>
			<nav class="navigation">
				<a href="home.jsp">Home</a> <a href="about.jsp">About</a> <a href="ViewRegisternew.jsp">Books</a> 
				<a href="ChatPage.jsp">ChatRoom</a>
				<a href="home.jsp">Log-out</a>
				
			</nav>
		</div>
	</header>

	<div class="chat-container">
		<div class="groups">
			<div class="search-container">
				<!-- Search input and button for colleges -->
				<input type="text" id="searchInput" placeholder="Search colleges...">
				<button>Search</button>
			</div>
			<ul id="groupsList">
				<%
DBUtil db = new DBUtil();
Connection conn = (Connection) db.getconnection();
Statement stmt = (Statement) conn.createStatement();
String username=login.uname;
ResultSet res = stmt.executeQuery("Select distinct(community) From mycommunities where username = '"+username+"'");
String grp_id ;
List<String> l = new ArrayList<String>();
while(res.next()){
	grp_id = res.getString(1);
	l.add(grp_id);
}
res = stmt.executeQuery("Select distinct(friend_name) From friend where sname = '"+username+"'");
while(res.next()){
	grp_id = res.getString(1);
	l.add(grp_id);
}
String gn ="";
for(String id : l){
%>
				<!-- List of colleges will be displayed here -->
				<li class="group" data-name="<%= id %>"><%= id %></li>
				<% }%>
				<!-- Add more college elements here -->
			</ul>

		</div>
		<form action="ChatPage.jsp" method="post">
			<input type="hidden" name="groupID" id="groupID" value="">
			<% String gid = request.getParameter("groupID"); %>
		</form>
		
		<div class="messages">
			<div class="group-name"></div>
			<div class="message-box"></div>
			
		</div>
	</div>
	<script src="ChatPage.js"></script>
	<!-- Add the JavaScript file -->
</body>
</html>
