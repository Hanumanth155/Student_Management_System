<%@ page import="com.studentapp.dto.Studentdto" %>
<%@ page import="java.util.ArrayList" %>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>View Students</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    min-height: 100vh;

    background: linear-gradient(
        135deg,
        #5b21b6,
        #7c3aed,
        #8b5cf6
    );

    padding: 40px;
}

.container {
    width: 95%;
    max-width: 1200px;

    margin: auto;

    background: white;

    padding: 30px;

    border-radius: 12px;

    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;

    color: #4c1d95;

    margin-bottom: 25px;
}

table {
    width: 100%;

    border-collapse: collapse;
}

th {
    background: #6d28d9;

    color: white;

    padding: 14px;

    text-align: center;
}

td {
    padding: 12px;

    text-align: center;

    border-bottom: 1px solid #ddd;

    color: #374151;
}

tr:hover td {
    background-color: #f5f3ff;
}

.back-btn {
    display: block;

    width: fit-content;

    margin: 25px auto 0;

    padding: 10px 25px;

    background: #6d28d9;

    color: white;

    text-decoration: none;

    border-radius: 6px;

    font-weight: bold;
}

.back-btn:hover {
    background: #4c1d95;
}
.one{
    display: inline-block;
    background-color: red;
    color: white;
    padding: 5px 10px;
    text-decoration: none;
    border-radius: 5px;
}

</style>

</head>

<body>

<div class="container">

<h2>All Students</h2>

<%

    ArrayList<Studentdto> list = null ;
        if( request.getAttribute("stdlist")!= null){
        	list = (ArrayList)request.getAttribute("stdlist");
        }

%>

<% if(request.getParameter("success")!=null){ %>
<%=request.getParameter("success")  %>
<%} %>
<% if(request.getAttribute("fail")!=null){ %>
<%=request.getAttribute("fail")  %>
<%} %>
<table>

    <thead>

        <tr>
            <th>SID</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Branch</th>
            <th>Location</th>
            <th>Action</th>
        </tr>

    </thead>

    <tbody>

    <%
            for (Studentdto s : list) {
    %>

        <tr>

            <td><%= s.getSid() %></td>

            <td><%= s.getSname() %></td>

            <td><%= s.getPhone() %></td>

            <td><%= s.getEmail() %></td>

            <td><%= s.getBranch() %></td>

            <td><%= s.getLocation() %></td>
            
			<td><button class="one"><a href ="Delete?Sid=<%=s.getSid()%>"> Delete</a>	</button></td>
        </tr>

    <%
            }

        
    %>

      

    </tbody>

</table>

<a href="dashboard.jsp" class="back-btn">
    Back to Dashboard
</a>

</div>

</body>

</html>