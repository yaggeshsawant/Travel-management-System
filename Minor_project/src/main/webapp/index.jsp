<!DOCTYPE html>

<head>
    <title>Simple landing page using html css in hindi</title>
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        
        header {
            width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.2)), url('image.jpg');
            background-size: cover;
            font-family: sans-serif;
        }
        
        nav {
            width: 100%;
            height: 100px;
            color: white;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        
        .logo {
            font-size: 2em;
            font-weight: bold;
            letter-spacing: 2px;
            transition-property: inherit;
        }
        
        .logo:hover {
            color: rgb(193, 163, 163);
        }
        
        .menu a {
            text-decoration: none;
            color: white;
            padding: 10px 20pt;
            font-size: 20px;
            position: relative;
        }
        
        .menu a:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            height: 0%;
            color: aqua;
            transition: 0.2s linear;
        }
        
        .menu a:hover::before {
            width: 100%;
            height: 100%;
            border: 2px solid indianred;
        }
        
        .register a:hover {
            background: transparent;
            border: 1px solid rgb(250, 197, 197);
            color: white;
        }
        
        .register a {
            text-decoration: none;
            color: black;
            padding: 10px 20pt;
            font-size: 20px;
            font-weight: bold;
            border-radius: 8px;
            background: indianred;
            transition:  all 0.2s ease;
        }
        .register a:active{
            transform: scale(0.96);
        }
        .h-text {
            max-width: 650px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%);
            text-align: center;
            color: aliceblue;
        }
        
        .h-text span {
            letter-spacing: 5px;
            font-weight: 680;
            color: aliceblue;
            border: 1px black;
        }
        
        .h-text h1 {
            font-size: 3.0em;
        }
        
        .h-text a {
            text-decoration: none;
            background-color: indianred;
            color: white;
            padding: 10px 20px;
            letter-spacing: 5px;
            transition: 0.2s;
        }
        
        .h-text a:hover {
            background: whitesmoke;
            color: black;
            border: 2px solid rgb(227, 54, 54);
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
                <a href="landingpage.jsp">Home</a>
                <a href="#">Hill Station</a>
                <a href="#">Best offers</a>
                <a href="#">Out Sites</a>
                <a href="#">Contact</a>
            </div>
            <div class="register">
                <a href="registerpage2.jsp">Register</a>
            </div>
        </nav>
        <section class="h-text">
            <span>Enjoy</span>
            <h1>International Travel Agency</h1>
            <br>
            <a href="loginpage.jsp">Book your trip</a>
        </section>

    </header>
</body>