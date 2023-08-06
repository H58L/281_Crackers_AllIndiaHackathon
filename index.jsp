<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*, java.sql.*, java.text.SimpleDateFormat, java.util.Date, java.text.DateFormat"%>
<%@ page import="com.model.*"%>

<%
String groupID = request.getParameter("groupID");

DBUtil db = new DBUtil();
Connection conn = (Connection) db.getconnection();
Statement stmt = (Statement) conn.createStatement();
ResultSet res = stmt.executeQuery("SELECT * FROM Chats WHERE grp_id = '" + groupID + "' ORDER BY date_time");

String my_id="manasi";
String chat, date_time, sender_id;
while (res.next()) {
    sender_id = res.getString("sender");
    chat = res.getString("chat");
    date_time = res.getString("date_time");
    if (sender_id == my_id) {
%>
<div class="sentByMe" style="background-color: lightblue;"><%= chat %></div>
<%
    } else {
%>
<div class="NOTsentByMe" style="background-color: lightgreen;"><%= chat %></div>
<%
    }
}
%>
<form action="Controller"  method="post">
			<div class="input-box">
				<input type="hidden" name="groupID1" id="groupID1" value=<%= groupID %>>
				<input type="hidden" name="myid" id="myid" value=<%= my_id %>>
				<input type="text" name="chat" placeholder="Type your message...">
				<input type ="submit" name="submit" value="Send" style="width: 20px;">
				
</div></form>
