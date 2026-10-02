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
            width: 950px;

            background-color: white;

            border-radius: 20px;

            display: flex;

            overflow: hidden;

            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
        }

        /* LEFT SIDE */

        .left {
            width: 40%;

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
            width: 60%;

            padding: 40px 50px;
        }

        .right h2 {
            font-size: 30px;

            color: #333;

            margin-bottom: 8px;
        }

        .subtitle {
            color: #777;

            margin-bottom: 25px;
        }

        /* INPUT BOX */

        .input-box {
            margin-bottom: 15px;
        }

        .input-box label {
            display: block;

            margin-bottom: 6px;

            color: #444;

            font-size: 14px;

            font-weight: bold;
        }

        .input-box input {
            width: 100%;

            padding: 12px 15px;

            border: 1px solid #ddd;

            border-radius: 8px;

            font-size: 15px;

            outline: none;
        }

        .input-box input:focus {
            border-color: #667eea;

            box-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
        }

        /* SIGNUP BUTTON */

        input[type="submit"] {
            width: 100%;

            padding: 13px;

            margin-top: 5px;

            background: linear-gradient(135deg, #667eea, #764ba2);

            color: white;

            border: none;

            border-radius: 8px;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;
        }

        input[type="submit"]:hover {
            opacity: 0.9;

            transform: translateY(-1px);
        }

        /* LOGIN LINK */

        .login {
            text-align: center;

            margin-top: 20px;

            color: #777;

            font-size: 14px;
        }

        .login a {
            color: #667eea;

            text-decoration: none;

            font-weight: bold;
        }

        .login a:hover {
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

                padding: 25px;
            }

            .right {
                width: 100%;

                padding: 35px 25px;
            }

        }

    </style>
<body>

	 <div class="container">

        <!-- LEFT SECTION -->

        <div class="left">

            <h1>Join Us!</h1>

            <p>
                Create your account and
                get started with us today.
            </p>

        </div>


        <!-- RIGHT SECTION -->

        <div class="right">

            <h2>Create Account</h2>

            <p class="subtitle">
                Fill in your details to create your account
            </p>


            <form action="signup" method="post">

                <div class="input-box">

                    <label>Name</label>

                    <input type="text"
                           name="name"
                           placeholder="Enter your name"
                           required>

                </div>


                <div class="input-box">

                    <label>Phone Number</label>

                    <input type="tel"
                           name="phone"
                           placeholder="Enter your phone number"
                           required>

                </div>


                <div class="input-box">

                    <label>Email</label>

                    <input type="email"
                           name="email"
                           placeholder="Enter your email"
                           required>

                </div>


                <div class="input-box">

                    <label>Location</label>

                    <input type="text"
                           name="loc"
                           placeholder="Enter your location"
                           required>

                </div>


                <div class="input-box">

                    <label>Branch</label>

                    <input type="text"
                           name="branch"
                           placeholder="Enter your branch"
                           required>

                </div>


                <div class="input-box">

                    <label>Password</label>

                    <input type="password"
                           name="pwd"
                           placeholder="Enter your password"
                           required>

                </div>


                <div class="input-box">

                    <label>Confirm Password</label>

                    <input type="password"
                           name="conf"
                           placeholder="Confirm your password"
                           required>

                </div>


                <input type="submit" value="Sign Up">

            </form>


            <p class="login">

                Already have an account?

                <a href="Login.jsp">Login</a>

            </p>

        </div>

    </div>
    	<% if(request.getAttribute("fail")!=null){
	%>
		<%=request.getAttribute("fail")%>
	<% 	
	}
	%>
</body>
</html>