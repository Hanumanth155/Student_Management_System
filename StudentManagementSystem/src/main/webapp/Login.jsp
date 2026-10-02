<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            min-height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 900px;
            min-height: 500px;

            background-color: white;
            border-radius: 20px;

            display: flex;
            overflow: hidden;

            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
        }

        /* LEFT SIDE */

        .left {
            width: 50%;

            background: linear-gradient(135deg, #4facfe, #00f2fe);

            color: white;

            display: flex;
            flex-direction: column;

            justify-content: center;
            align-items: center;

            text-align: center;

            padding: 40px;
        }

        .left h1 {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .left p {
            font-size: 17px;
            line-height: 1.6;
        }

        /* RIGHT SIDE */

        .right {
            width: 50%;
            padding: 60px 50px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .right h2 {
            font-size: 30px;
            color: #333;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #777;
            margin-bottom: 30px;
        }

        /* INPUTS */

        .input-box {
            margin-bottom: 20px;
        }

        .input-box label {
            display: block;
            margin-bottom: 7px;
            color: #444;
            font-size: 14px;
            font-weight: bold;
        }

        .input-box input {
            width: 100%;
            padding: 13px 15px;

            border: 1px solid #ddd;
            border-radius: 8px;

            font-size: 15px;

            outline: none;
        }

        .input-box input:focus {
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
        }

        /* LOGIN BUTTON */

        input[type="submit"] {
            width: 100%;

            padding: 13px;

            background: linear-gradient(135deg, #667eea, #764ba2);

            color: white;

            border: none;
            border-radius: 8px;

            font-size: 16px;
            font-weight: bold;

            cursor: pointer;

            margin-top: 5px;
        }

        input[type="submit"]:hover {
            opacity: 0.9;
            transform: translateY(-1px);
        }

        /* SIGNUP */

        .signup {
            text-align: center;
            margin-top: 25px;

            color: #777;
            font-size: 14px;
        }

        .signup a {
            color: #667eea;
            text-decoration: none;
            font-weight: bold;
        }

        .signup a:hover {
            text-decoration: underline;
        }

        /* MOBILE */

        @media (max-width: 700px) {

            .container {
                width: 90%;
                flex-direction: column;
            }

            .left {
                width: 100%;
                padding: 30px;
            }

            .right {
                width: 100%;
                padding: 40px 30px;
            }

        }

    </style>
<body>
	<% if(request.getAttribute("fail")!=null){
	%>
		<%=request.getAttribute("fail")%>
	<% 	
	}
	%>
	

	
	   <div class="container">

        <!-- LEFT SECTION -->

        <div class="left">

            <h1>Welcome Back!</h1>

            <p>
                Login to your account and continue
                where you left off.
            </p>

        </div>


        <!-- RIGHT SECTION -->

        <div class="right">

            <h2>Login</h2>

            <p class="subtitle">
                Enter your details to access your account
            </p>

            <form action="login" method="post">

                <div class="input-box">

                    <label>Email</label>

                    <input type="email"
                           name="email"
                           placeholder="Enter your email"
                           required>

                </div>


                <div class="input-box">

                    <label>Password</label>

                    <input type="password"
                           name="pwd"
                           placeholder="Enter your password"
                           required>

                </div>


                <input type="submit" value="Login">

            </form>


            <p class="signup">

                Don't have an account?

                <a href="signup.jsp">Sign Up</a>
				<a href="forgotpassword.jsp">Forgot Password</a>
            </p>

        </div>

    </div>
    	<% if(request.getAttribute("pass")!=null){
	%>
		<%=request.getAttribute("pass")%>
	<% 	
	}
	%>
	
</body>
</html>