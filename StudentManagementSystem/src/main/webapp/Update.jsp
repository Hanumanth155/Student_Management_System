<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.studentapp.dto.Studentdto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    * {
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

body {
    margin: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg, #667eea, #764ba2);
}

    form {
        width: 400px;
        background: white;
        padding: 35px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    label {
        display: block;
        margin-bottom: 8px;
        margin-top: 18px;
        font-size: 15px;
        font-weight: bold;
        color: #333;
    }

    label:first-child {
        margin-top: 0;
    }

    input[type="text"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
        outline: none;
        font-size: 14px;
        transition: 0.3s;
    }

    input[type="text"]:focus {
        border-color: #667eea;
        box-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
    }

    input[type="submit"] {
        width: 100%;
        margin-top: 25px;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background: #667eea;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #5568d8;
    }

    a {
        display: block;
        width: 400px;
        margin-top: 15px;
        padding: 12px;
        text-align: center;
        text-decoration: none;
        color: white;
        background: #444;
        border-radius: 6px;
        transition: 0.3s;
    }

    a:hover {
        background: #222;
    }
</style>
</head>
<body>
	<%Studentdto s = null;
	if(session.getAttribute("student")!=null){
		s=(Studentdto)session.getAttribute("student");
	}%>
	
	<% if(request.getAttribute("fail")!=null){
	%>
		<%=request.getAttribute("fail")%>
	<% 	
	}
	%>
	<form action="update" method="post">
	<label>Name</label>
     <input type="text"
     name="name"
     placeholder="Enter your Name"
     value="<%=s.getSname() %>"
     required>
     	<label>Branch</label>
     <input type="text"
     name="branch"
     placeholder="Enter your Name"
     value="<%=s.getBranch() %>"
     required>
     	<label>Location</label>
     <input type="text"
     name="location"
     placeholder="Enter your Name"
     value="<%=s.getLocation() %>"
     required>
     <input type="submit" value="update"/>
	
	</form>
	<a href="dashboard.jsp">Back</a>
</body>
</html>