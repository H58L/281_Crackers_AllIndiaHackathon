<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    /* CSS styles go here */

   *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: sans-serif;
  }
  body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: linear-gradient(rgb(2, 167, 227),rgb(129, 203, 246),rgb(187, 227, 233));
    background-size: cover;
    background-position: center;
  }

    h1 {
      color:rgb(2, 67, 102);
      text-align: center;
    }
    
    header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 10px 50px;
    display:flex;
    justify-content: space-between;
    align-items: center;
    z-index:99 ;
  }
    

    .navigation a{
    position: relative;
    font-size: 1.1em;
    color: #0c0c0c;
    text-decoration: none;
    font-weight: 500;
    margin-left: 40px;
  }
  .navigation a::after{
    content: '';
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: 3px;
    background: rgb(21, 20, 20);
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform  0.5s;
  }

  .navigation a:hover::after{
transform-origin: left;
transform: scaleX(1);
}
  .navigation .btnLogin-popup{
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
 margin-left: 40px;
 transition:  .5s;
  }
  .navigation .btnLogin-popup:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
 .container{
    right: 0%;
    position: relative;
    width: 1400px;
    height: 750px;
    padding: 30px;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, .5);
   
 }
  </style>
  
<body>
    
    <!-- <header>
        <h2 class="Logo">Hubbers</h2>
        <nav class="navigation">
          <a href="home.jsp">Home</a>
          <a href="about.jsp">About</a>
          
         <button class="btnLogin-popup">Login</button>
        </nav>
      </header> -->
  <div class="container">
   
    <h1>Welcome to Hubbers-Your Ultimate Student Community! </h1>
   
    <p>
        <br><br>
        At Hubbers, we believe that the journey through college is more enjoyable when shared with like-minded peers. Our platform is designed to connect college students from all walks of life, providing a safe and engaging space for discussions, problem-solving, and sharing resources. Whether you're seeking academic assistance, social connections, or just a friendly chat, we've got you covered!
              <br><br>

              <h2>Why Hubbers?</h2>
<br>
<ul>
    <p>1.Convenience: Online voting allows voters to cast their votes from anywhere, anytime, as long as they have an internet connection.
    </p>
    <br>
    <p>A Supportive Network: College life can be challenging, and we understand the importance of having a support network. With CampusConnect, you can find friends who will lend a listening ear, offer advice, and help you overcome hurdles along the way.
    </p>
    <br>
    <p>Create or Join Communities: Form or join communities based on your academic interests, hobbies, or extracurricular activities. Interact with fellow enthusiasts, exchange ideas, and engage in lively discussions.
    </p>
    <br>
    <p>Share and Discover Resources: From textbooks and study guides to notes and research papers, CampusConnect lets you share and discover a wealth of educational materials. Help others while building your reputation as a knowledgeable peer!
    </p>
    <br>
    <p>Expand Your Circle: College is an opportunity to broaden your horizons, and with CampusConnect, you can make friends from different colleges, backgrounds, and even countries! Embrace diversity and enrich your college experience.
    </p>
    <p>Easy Friend Requests: Sending friend requests to other college students is a breeze on CampusConnect. Expand your network and stay connected with your new friends throughout your college journey.</p>

</ul>
<br>
At Hubbers, our mission is to foster a vibrant, inclusive, and student-driven community where everyone feels valued and heard. We aim to provide a platform that empowers students to learn from one another, grow both academically and personally, and build lifelong friendships.
Thank you for choosing our Hubbers. We look forward to serving you and helping to make democracy more accessible for everyone.
<br><br>
<ul>
  
    <h2>Team</h2>
    <li> Manasi Deshmukh -</li>
    <li> Utkarsha Kumbhar -</li>
    <li> Manasi Deshmukh -</li>
    <li>  Lisa Susheel-</li>
    <li>  Vishakha-</li>
    <li> Rajnandini-</li>
</ul>
  
 
        
        
       
      
       


      </p>
  </div>
 
</body>
</html>