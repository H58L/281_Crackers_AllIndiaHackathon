<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="communities.css">
</head>

<body>
   
        <header>
            <h1 class="Logo">Logo</h1>
            <nav class="navigation">
                  <button class="nav-btn" onclick="window.location.href = 'home.jsp';">Home</button>
                  <button class="nav-btn" onclick="window.location.href = 'about.jsp';">About</button>
                       
            </nav>
        </header>
         <nav class="search">
            <label for="search">Search</label>
            <input type="text" name="search" id="search" placeholder="search">
        </nav>
         <form action="Myservlet" method="post">
       

        <main>
            <h1>Communities</h1>
            <br>
            <form action="Myservlet" method="Post">
            <section class="comm">
            <input type="hidden" value="Cummins College of Engineering" required name="hvalue">
            
                <h2>Cummins College of Engineering <button class="right" id="myButton">Join</button> </h2>
                
               
            </section>
             </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>COEP technological university <button class="right"  id="btn">Join</button> </h2>
                <input type="hidden" value="COEP technological university" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>VJTI <button class="right"  id="btn2">Join</button> </h2>
                <input type=hidden value="VJTI" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>PCCOE <button class="right"  id="btn3">Join</button> </h2>
                <input type=hidden value="PCCOE" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>MIT world peace university <button class="right"  id="btn4">Join</button> </h2>
                <input type=hidden value="MIT world peace university" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>Vishwakarma Institute <button class="right"  id="btn5">Join</button> </h2>
                <input type=hidden value="Vishwakarma" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>Walchand college of Engineering<button class="right"  id="btn6">Join</button> </h2>
                <input type=hidden value="Walchand college of Engineering" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>Sardar Patel College of Engineering <button class="right"  id="btn7">Join</button> </h2>
                <input type=hidden value="Sardar Patel College of Engineering" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>D.Y. Patil Institute of technology <button class="right" id="btn8">Join</button> </h2>
                <input type=hidden value="D.Y. Patil Institute of technology" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>K.J Somaiya <button class="right" id="btn9">Join</button> </h2>
                <input type=hidden value="K.J Somaiya" required name="hvalue">
            </section>
            </form>
            <hr>
             <form action="Myservlet" method="Post">
            <section class="comm">
                <h2>Bharati Vidyapeeth <button class="right" id="btn10">Join</button> </h2>
                <input type=hidden value="Bharati Vidyapeeth" required name="hvalue">
            </section>
            </form>

            <script src="index.js"></script>
        </main>


    </form>
</body>

   
</html>