<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="com.*"%>
<%@page import="login.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="./style_myprofile.css" rel="stylesheet">
    <title>My Profile</title>


</head>
<style>
 
body
{
         background-color: #7895CB;
         margin: 0;
            padding: 0;
            height: 100%;
}
.skills
{
    display:flex;
    justify-content: center;
    align-items: center;
    padding: 10px;
}
.contact{
    display:flex;
    justify-content: center;
    align-items: center;
    padding: 10px;
}
.btn {
    border: 0 ;
    line-height: 1.5;
    background-color: #4A55A2;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-weight: bold;
    margin: 4px 2px;
    cursor: pointer;
  }

  th{
    text-align:center;
  }
  
  .fa
  {
    color:gray;
  }
  .checked {
    color: #4A55A2;
  }
  td{
    padding-left:200px;
  }
  tr{
    padding-bottom: 200px;
  }
  .py-5
  {
    padding-bottom:0px;
  }
</style>
<body>
    <div class="container" style=" width:100vw; margin-left: 0; margin-right: 0; padding-left: 0px; padding-right:0px; max-width: 100vw;">       
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4" style="background-color: black; width: 100%;">
         <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
           <img src="./LOGO.png" alt="logo" height="60px" width="60px">
           <p>    </p>
           <span class="fs-4" style="color: white;"><b>Hubber</b></span>
         </a>
   <b><ul class="nav nav-pills">
           <li class="nav-item"><a href="home.jsp" class="nav-link" style="color:white">Home</a></li>
           <li class="nav-item"><a href="about.jsp" class="nav-link" style="color:white">About</a></li>
           <li class="nav-item"><a href="ViewRegisternew.jsp" class="nav-link" style="color:white">Books</a></li>
           <li class="nav-item"><a href="ChatPage.jsp" class="nav-link" style="color:white">Chatroom</a></li>
           <li class="nav-item"><a href="profile.jsp" class="nav-link" style="color:white">My profile</a></li>
           <li class="nav-item"><a href="home.jsp" class="nav-link" style="color:white">Log Out</a></li>
         </ul></b>
         
       </header>
     </div>  
      
      <% Connection conn = null; 
      Statement stmt = null;
      String username =login.uname;
      ResultSet rs=null;
      try{ Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Hackathon","root","Utkarsha@06");
      stmt = conn.createStatement(); 
      String q="select user_name,user_interests,user_college,MYINFO,user_email_id from users where user_name= ?";
      PreparedStatement pstmt = conn.prepareStatement(q);
      pstmt.setString(1, login.uname);
      rs = pstmt.executeQuery();
      if(rs.next()){
    	  %>
    	  </div> 
   <div class="px-4 my-5 text-center">
        <img class="d-block mx-auto mb-4" src="./profile_pic_placeholder.jpg" alt="prfile pic placeholder" width="90" height="90" style="border-radius: 50%;">
        <h1 class="display-5 fw-bold text-body-emphasis"><%=rs.getString(1) %></h1>
        <div class="col-lg-6 mx-auto">
          <b><p class="lead mb-4"><%=rs.getString(4) %></p></b>
          <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
           <b><h5>Institution:&ensp;</b><%=rs.getString(3) %></p></h5>
          </div>
        </div>
        <!-- <hr style="height: 5px;" /> -->
</div></div>
        <div class="skills">
            <h4><b>Primary Skill</b></h4><br>
            <!-- <button type="button" class="btn"><%=rs.getString(2) %></button> -->
            <p><%=rs.getString(2) %></p> 
        </div>
        </div>
        <!-- <hr /> -->
<div class="contact">
    <h4><b>Contact</b></h4><br>
    <p><img src="./email_icon.jpg" widht="20" height="20"><a style="color: #4A55A2"><%=rs.getString(5) %></a></p>
</div>
<!-- <hr /> -->
     <div class="d-flex gap-2 justify-content-center py-5">
  <button class="btn btn-primary d-inline-flex align-items-center" type="button" style="text-align: center;">
    Edit Profile &ensp;
    <img src="./edit_icon.jpg" width="20" height="20">
  </button>
 
</div>     
    	  <%
      }
      } catch(Exception e){ e.printStackTrace(); } %>
   
</body>
</html>