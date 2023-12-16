<!DOCTYPE html>
<head>
    <title>Simple landing page using html css in hindi</title>
    <style type="text/css">
*{padding:0; margin:0;box-sizing: border-box;}
header{
    width: 100%;
    height: 100vh;
    background:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.2)), url('image.jpg');
    background-size: cover;
    font-family: sans-serif;
}
nav{
    width: 100%;
    height: 100px;
    
    color: white;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.logo{
    font-size: 2em;
    font-weight: bold;
    letter-spacing: 2px;
    transition-property: inherit;
}
.logo:hover{
    color:rgb(193, 163, 163);
    

}
.menu a{
    text-decoration: none;
    color: white;
    padding: 10px 20pt;
    font-size: 20px;
    position: relative;
}
.menu a:before{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0;
    height: 0%;
    color: aqua;

    transition: 0.2s linear;
}
.menu a:hover::before{
    width: 100%;
    height: 100%;
    border: 2px solid indianred;
    
}


.container{
    color:black ;
    width: 270px;
    background: rgba(245, 245, 245, 0.499);
    margin: 50px 40%;
    padding: 20px;
    border-radius: 10px;
    border: 5px solid black;
}
.reg{
    padding: 20px 10px;
}
.formdesign{
    
    padding: 10px;
    

}
.but{
    margin-top: .5cm;
    border-radius: 5px;
    padding: 5px 40px;
}
.but:hover{
    color: aliceblue;
    background-color: rgb(7, 122, 245);
    margin-top: .5cm;
    border-radius: 5px;
    padding: 5px 40px;
}
.login a{
   text-decoration: none;
            color: white;
            padding: 10px 20pt;
            font-size: 20px;
            font-weight: bold;
            border-radius: 8px;
            background: indianred;
            transition:  all 0.2s ease;
}

.login a:hover {
            background: white;
            border: 1px solid indianred;
            color: black;
        }
        /* Alerts */
.alert-heading {
  font-weight: 500;
  font-family: "Poppins", sans-serif;
  font-size: 20px;
}

/* Close Button */
.btn-close {
  background-size: 25%;
}

.btn-close:focus {
  outline: 0;
  box-shadow: none;
}
 .alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
}

.alert.success {background-color: #04AA6D;}
.alert.info {background-color: #2196F3;}
.alert.warning {background-color: #ff9800;}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}       
        
    </style>
   
</head>
<body>
    <header>
        <nav>
            <div class="logo">
                Travel-X
            </div>
            <div class="menu">           
                <a href="index.jsp">Home</a>
                <a href="#">Hill Station</a>
                <a href="#">Best offers</a>
                <a href="#">Out Sites</a>
                <a href="#">Contact</a>
            </div>
            <div class="login" >
                <a href="loginpage.jsp">Login</a>
            </div>
            
        </nav>
        <%
	String msg = request.getParameter("msg") == null ? "" : request.getParameter("msg");

	if (msg.equalsIgnoreCase("Yes")) {
	%>
	<div class="alert success">
  <span class="closebtn">&times;</span>  
  <strong>Success!</strong> Indicates a successful or positive action.
</div>
	<%}else if(msg.equalsIgnoreCase("No")){%>
		<div class="alert">
  <span class="closebtn">&times;</span>  
  <strong>Danger!</strong> Wrong Email And Password
</div>
		<%}%>
	<!--  alert massages end-->
        <div class="container">
        <form class="form" action="UserServlet" method="post">
            <h1 class="reg" >
                Registration
            </h1>
            <fieldset>           <div class="formdesign" id="text">
                Name:<input type="text"  id="name" name="Name" style="border-radius: 5px;padding: 2px;" >
                Email:<input type="email" id="email" name="Email" style="border-radius: 5px;padding: 2px;">
                Phone:<input type="tel"  id="phone" name="Phone" style="border-radius: 5px; padding: 2px;">
                Password:<input type="password" id="password"name="Password" style="border-radius: 5px; padding: 2px;">
               
                <div style="padding: 9px;"><span><input type="checkbox" id="check" name="check" > Agree with the privacy.</span></div>
                <input class="but" type="submit" value="Register" class="submit" style="margin-left: 25px;">
            </div>
        </fieldset>
 
        </form>
    </div>
        
    </header>
</body>
<script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>