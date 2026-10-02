<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.studentapp.dto.Studentdto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* { margin: 0; padding: 0; box-sizing: border-box; } 
h1{
marginTop : "50px"
text-align : "center"
}
/* ========================= PAGE BACKGROUND ========================= */ 
body { font-family: "Segoe UI", Arial, sans-serif; min-height: 100vh; background: linear-gradient( 135deg, #5b21b6, #7c3aed, #8b5cf6 ); } 
/* ========================= NAVBAR ========================= */
 .navbar { height: 72px; width: 100%; background: #ffffff; display: flex; align-items: center; justify-content: space-between; padding: 0 6%; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15); position: sticky; top: 0; z-index: 100; } 
 /* ========================= LOGO ========================= */ .logo { font-size: 20px; font-weight: 700; color: #4c1d95; white-space: nowrap; color : black} /* ========================= NAV LINKS ========================= */
  .nav-links { display: flex; align-items: center; height: 100%; gap: 5px; } .nav-links a { height: 100%; display: flex; align-items: center; padding: 0 18px; text-decoration: none; color: #4b5563; font-size: 14px; font-weight: 600; border-bottom: 3px solid transparent; transition: all 0.25s ease; }
   /* ========================= HOVER ========================= */ .nav-links a:hover { color: #6d28d9; background: #f5f3ff; border-bottom-color: #7c3aed; } /* ========================= ACTIVE ========================= */ .nav-links a.active { color: #6d28d9; background: #f5f3ff; border-bottom-color: #7c3aed; } 
   /* ========================= LOGOUT ========================= */ .nav-links .logout { color: #dc2626; margin-left: 8px; } .nav-links .logout:hover { color: #b91c1c; background: #fef2f2; border-bottom-color: #dc2626; } /* ========================= RESPONSIVE ========================= */ @media (max-width: 800px) { .navbar { padding: 0 3%; } .logo { font-size: 16px; } .nav-links a { padding: 0 10px; font-size: 12px; } } @media (max-width: 600px) { .navbar { height: auto; flex-direction: column; padding: 15px 0 0; } .logo { margin-bottom: 12px; } .nav-links { height: 45px; } .nav-links a { padding: 0 8px; font-size: 11px; } }
</style>
<body>


	
	<%Studentdto s = null;
	if(session.getAttribute("student")!=null){
		s=(Studentdto)session.getAttribute("student");
	}%>
	<% if(request.getAttribute("success")!=null){
	%>
		<%=request.getAttribute("success")%>
	<% 	
	}
	%>
	<nav class="navbar"> 
	<div class="logo">
 
        Welcome <%=s.getSname() %>

	</div> 
	<div class="nav-links"> 
	<% if(s.getSid()==5)  {%>
	<a href="viewstudents"> View Students </a> 
	<%} %>
	<a href="Profile.jsp"> View Profile </a> 
	<a href="Update.jsp"> Update Profile </a>
	 <a href="logout" class="logout"> Logout </a> </div> 
	</nav>
	
</body>
</html>