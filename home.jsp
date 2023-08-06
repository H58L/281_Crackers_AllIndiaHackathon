<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</head>
<style>
  
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
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
  min-height:400vh;
    background:linear-gradient(rgb(2, 105, 160),rgb(84, 215, 251),rgb(145, 222, 240));
    background-size: cover;
    backdrop-filter: blur(5px);
  -webkit-backdrop-filter: blur(5px); /* For Safari support */
    background-position: center;
  
  }
  header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 10px 100px;
    display:flex;
    justify-content: space-between;
    align-items: center;
    z-index:99 ;
  }

  .logo{
    font-size: 2em;
    color: #f3ecec;
  position: relative;
  left: 200px;
  }
  
  .navigation a{
    position: relative;
    font-size: 1.0em;
    color: #f6f1f1;
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
    background: rgb(30, 133, 235);
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
   background-color: #55cdf5;
    background: transparent;
    border: 2px solid #b09dfb;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: rgb(207, 195, 195);
 font-weight: 500;
 margin-left: 40px;
 transition:  .5s;
  }
  .navigation .btnLogin-popup:hover{
    background-color: #9cd7ea;
    color: rgb(9, 8, 8);
  }



  .wrapper{
    right: 60px;
    position: relative;
    width: 400px;
    height: 500px;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, .5);
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    transform: scale(0);
    transition: transform .5s ease,height 0.2s ease;
  }

.wrapper.active-popup{
  transform: scale(1);

}
  .wrapper.active{
    height: 800px;
   
  }
  .wrapper .form-box{
    width: 100%;
    padding: 40px;
    
  }
  .wrapper .form-box.login{
    transition: transform .18s ease;
    transform: translateX(0);

  }
  .wrapper.active .form-box.login{
    transition: none;
    transform: translateX(-400px);

  }
  .wrapper .form-box.register{
   position: absolute;
   transition: none;
  transform: translateX(400px);
  }
  .wrapper.active .form-box.register{
    transition: transform .18s ease;
    transform: translateX(0);
  }

  .wrapper .icon-close{
    position: absolute;
    top: 0;
    right: 0;
    width: 45px;
    height: 45px;
    background: black;
    font-size: 2em;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom-left-radius:20px ;
    cursor: pointer;
    z-index: 1;
  }

   .form-box h2{
    font-size: 2em;
    color: black;
    text-align: center;
   }
   .input-box{
    position: relative;
    width: 100%;
    height: 50px;
    border-bottom: 2px solid black;
    margin: 30px 0;

   }
   .input-box label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color: black;
    font-weight: 500;
    pointer-events: none;
  transition: .5s;
   }
   .input-box input:focus~label,
   .input-box input:valid~label{
top: -5px;
   }
   .input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    color: black;
    font-weight:600 ;
    padding: 0 35px 0 5px;
   }
   .input-box .icon{
    position: absolute;
    right: 8px;
    font-size: 1.2em;
    color: black;
    line-height: 57px;

   }
   .remember-forgot{
    font-size: 0.9em;
    color: black;
    font-weight: 500;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;

   }
   .remember-forgot label input{
    accent-color: black;
    margin-right:3px ;

   }
   .remember-forgot a{
    color: black;
    text-decoration: none;

   }
   .btn{
    width: 100%;
    height: 45px;
    background: black;
    border: none;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
   font-weight: 500;
    color: white;

   }
   .login-register{
    font-size: 0.9em;
    color: black;
    text-align: center;
    font-weight: 500;
    margin: 25px 0 10px;
   }
   .login-register p a{
    color: black;
    text-decoration: none;
    font-weight: 600;
   }
   .login-register p a:hover{
    text-decoration: underline;
   }
   .container-box{
    background: #222;
    color: white;
    background-size: cover;
    background-position: cover;
    background-position: center;
    height: 100px;
    width: 100px;
    margin: auto;
   }

   .container-box  #textBox{
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    border: none;
    width: 100%;
    border: none;
    outline: none;
    background: transparent;
    color: white;
    padding: 10px;
   }


   .container-box #prevText{
    position: absolute;
    left: 50%;
    bottom: 30%;
    transform: translateX(-50%);
    width: 90%;
    font-size: 16px;
    text-align: center;
    text-shadow: 2px 2px 20px #000;
   }

   .container-box .upload-icon{
    width: 30px;
    bottom: 100px;
    left: 60%;
    transform: translateX(-50%);
    cursor: pointer;
   }
   header img{
    height: 50px;
    width: 50px;
   }
   .input-box select {
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    color: black;
    font-weight: 600;
    padding: 0 35px 0 5px;
  }

  /* Style for the select arrow */
  .input-box .icon {
    position: absolute;
    right: 8px;
    font-size: 1.2em;
    color: black;
    line-height: 57px;
  }

  /* Style for the dropdown options */
  .input-box select option {
    font-size: 1em;
  }
  .high h1{
        position: relative;
        font-family: 'Sofia', sans-serif;
        top: 50px;
        left: 100px;
        word-spacing: 10px;
        font-size: 6vw;
        color:#252839;
        -webkit-text-stroke: 0.2vw #383d52;
        text-transform: uppercase;
     }

     .high h1::before{
        content: attr(data-text);
        position: absolute;
        top: 0px;
        left: 0;
        width:0;
        height: 100%;
        color: #0c17ed;
        -webkit-text-stroke: 0vw #383d52;
        border-right: 2px solid #0c17ed;
        overflow: hidden;
        animation: animate 6s linear infinite;
     }


     @keyframes animate{
        0%,10%,100%{
            width: 0;
        }
        50%, 70%,90%{
            width: 100%;
        }
     }
     header {
  position: fixed;
  top: 0;
  left: 0px;
  width: 100%;
  padding: 10px 100px;
  background-color: black; /* Add this line to set the background color to black */
  display: flex;
  justify-content: space-between;
  align-items: center;
  z-index: 99;
}

.logo {
  font-size: 2em;
  color: #f3ecec;
  position: relative;
  left: 0; /* Change left value to 0 to move the logo to the left side */
  margin-right: 200px; /* Add margin-right to create space between the logo and other elements on the right side */
}
.background-wrapper.active {
    display: none;
  }
  .high p {
    font-size: 40px;
    color: #5d0808;
    text-align: center;
    margin-top: 20px;
    position: relative;
    top: 100px;
  }
  body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: linear-gradient(rgb(2, 105, 160), rgb(84, 215, 251), rgb(145, 222, 240));
  background-size: cover;
  backdrop-filter: blur(5px);
  -webkit-backdrop-filter: blur(5px); /* For Safari support */
  background-position: center;
  font-family: 'Poppins', sans-serif;
  color: white;
  margin: 0;
  padding: 0;
}

/* Additional Styles for the Header */
header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  padding: 20px 100px;
  background-color: black;
  display: flex;
  justify-content: space-between;
  align-items: center;
  z-index: 99;
}

.logo {
  font-size: 2em;
  color: #f3ecec;
}

.navigation a {
  position: relative;
  font-size: 1.1em;
  color: #f6f1f1;
  text-decoration: none;
  font-weight: 500;
  margin-left: 40px;
}

.navigation a::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: -6px;
  width: 100%;
  height: 3px;
  background: rgb(30, 133, 235);
  border-radius: 5px;
  transform-origin: right;
  transform: scaleX(0);
  transition: transform 0.5s;
}

.navigation a:hover::after {
  transform-origin: left;
  transform: scaleX(1);
}

.navigation .btnLogin-popup {
  width: 110px;
  height: 40px;
  background-color: #55cdf5;
  background: transparent;
  border: 2px solid #b09dfb;
  outline: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 1.1em;
  color: rgb(207, 195, 195);
  font-weight: 500;
  margin-left: 40px;
  transition: .5s;
}

.navigation .btnLogin-popup:hover {
  background-color: #9cd7ea;
  color: rgb(9, 8, 8);
}

  .header-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100px; /* Set the height as needed */
  }

  .small-nav .navigation a {
    font-size: 0.9em; /* Reduce the font size for the navigation links */
  }
  
</style>
<body>

 <header>

  <div class="logo">Hubbers</div>
    <nav class="navigation">
      <a href=home.jsp>Home</a>
      <a href=about.jsp>About</a>
      <button class="btnLogin-popup">login</button>
    </nav>
  </header>
 
  <div class="wrapper">
<span class="icon-close">
  <ion-icon name="close"></ion-icon>
</span>

    <div class="form-box  login">
      <h2>Login</h2>
      <form action="login"  method=Post>
       <div class="input-box">
          <span class="icon">
            <ion-icon ></ion-icon></span>
          <input type="text" required name="uid">
          <label >Student ID</label>
        </div>

        <div class="input-box">
          <span class="icon">
          <ion-icon></ion-icon></span>
          <input type="text" required  name="uname">
          <label >Student Name</label>
        </div>
        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="email" required name="mail">
          <label >Email</label>
        </div>
        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="password" required name="password">
          <label >Password</label>
        </div>
        <div class="remember-forgot">
          <label ><input type="checkbox">Remember me</label>
          <a href="#">Forgot Password?</a>

        </div>
        <button type="submit" class="btn">Login</button>
        <div class="login-register">
          <p>Don't have an account <a href="#" class="register-link">Register</a></p>
        </div>
      </form>
    </div>


    <div class="form-box  register">
      <h2>Registration</h2>
      <form action="signup" method=Post>
        <div class="input-box">
          <span class="icon">
            <ion-icon ></ion-icon></span>
          <input type="text" required name="uid">
          <label >Student ID</label>
        </div>

        <div class="input-box">
          <span class="icon">
          <ion-icon></ion-icon></span>
          <input type="text" required  name="sname">
          <label >Student Name</label>
        </div>

        <div class="input-box">
          <span class="icon">
          <ion-icon></ion-icon></span>
          <input type="text" required  name="info">
          <label >Discription</label>
        </div>
        <div class="input-box">
         
          <input type="text" required  name="cname">
          <label >College name</label>
        </div>

          <div class="input-box">
            <span class="icon">
            <ion-icon ></ion-icon></span>
            <input type="email" required name="mail">
            <label >Email</label>
          </div>

         
        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="password" required name="password">
          <label >Password</label>
        </div>

        <div class="input-box">
          <span class="icon">
            <ion-icon name="globe"></ion-icon>
          </span>
          <select name="options" required>
            <option value="" disabled selected>Choose your Interest</option>
            <option value="C++">C++</option>
            <option value="Java">Java</option>
            <option value="Frontend">Frontend</option>
            <option value="Python">Python</option>
            <option value="Machine Learning">Machine Learning</option>
            <option value="Data Science">Data Science</option>
            <option value="IOT">IOT</option>
            <!-- Add more countries as needed -->
          </select>
        </div>

        <div class="remember-forgot">
          <label ><input type="checkbox">Remember me</label>
          <a href="#">I agree to the terms & conditions</a>
        </div>

        <button type="submit" class="btn">Register</button>
        <div class="login-register">
          <p>Already have an account <a href="#" class="login-link">Login</a></p>
        </div>
      </form>
    </div>
  </div>
  <div class="background-wrapper">
   
    <div class="high">
      <h1 data-text="Hubbers">Hubbers</h1>
      <p>Welcome to Hubbers-Your Ultimate Student Community!</p>
    </div>
  </div>

  <script>
  const wrapper = document.querySelector('.wrapper');
  const loginLink = document.querySelector('.login-link');
  const registerLink = document.querySelector('.register-link');
  const btnPopup = document.querySelector('.btnLogin-popup');
  const iconClose = document.querySelector('.icon-close');
  const backgroundWrapper = document.querySelector('.background-wrapper'); // Select the background wrapper element

  registerLink.addEventListener('click', () => {
    wrapper.classList.add('active');
    wrapper.querySelector('.register').classList.add('active-form');
    wrapper.querySelector('.login').classList.remove('active-form');
    backgroundWrapper.classList.add('active'); // Hide the background when form is active
  });

  loginLink.addEventListener('click', () => {
    wrapper.classList.remove('active');
    wrapper.querySelector('.register').classList.remove('active-form');
    wrapper.querySelector('.login').classList.add('active-form');
    backgroundWrapper.classList.add('active'); // Hide the background when form is active
  });

  btnPopup.addEventListener('click', () => {
	  wrapper.classList.add('active-popup');
	  document.body.style.overflow = 'auto'; // Enable scrolling when the popup is open
	  backgroundWrapper.classList.add('active'); // Hide the background when the popup is open
	});
  iconClose.addEventListener('click', () => {
    wrapper.classList.remove('active-popup');
    document.body.style.overflow = 'auto'; // Allow scrolling when the popup is closed
    backgroundWrapper.classList.remove('active'); // Show the background when the form is closed
  });
</script>

  
  
</body>
</html>