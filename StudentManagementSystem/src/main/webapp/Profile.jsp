<%@ page import="com.studentapp.dto.Studentdto" %>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>View Profile</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #5b21b6, #7c3aed, #8b5cf6);

            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Main Profile Card */
        .profile-card {
            width: 850px;
            background: white;
            border-radius: 18px;
            padding: 35px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
        }

        /* Heading */
        .profile-card h1 {
            text-align: center;
            color: #4c1d95;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #6b7280;
            margin-bottom: 30px;
        }

        /* Table */
        table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 10px;
        }

        thead {
            background: #4c1d95;
            color: white;
        }

        th {
            padding: 15px;
            text-align: center;
        }

        tbody td {
            padding: 15px;
            text-align: center;
            color: #374151;
            border-bottom: 1px solid #e5e7eb;
        }

        tbody tr:hover {
            background-color: #f5f3ff;
        }

        /* Back Button */
        .back-btn {
            display: block;
            width: 200px;
            margin: 30px auto 0;

            padding: 12px 20px;

            text-align: center;
            text-decoration: none;

            background: #6d28d9;
            color: white;

            border-radius: 8px;

            font-weight: 600;

            transition: 0.3s;
        }

        .back-btn:hover {
            background: #4c1d95;
            transform: translateY(-2px);
        }

        /* Mobile */
        @media (max-width: 900px) {

            .profile-card {
                width: 95%;
                padding: 20px;
            }

            table {
                font-size: 13px;
            }

            th,
            tbody td {
                padding: 10px 5px;
            }
        }

    </style>
</head>

<body>

    <%
        Studentdto s = (Studentdto) session.getAttribute("student");
    %>

    <div class="profile-card">

        <h1>Student Profile</h1>

        <p class="subtitle">
            Your registered student information
        </p>

        <table>

            <thead>
                <tr>
                    <th>Sid</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Branch</th>
                    <th>Location</th>
                </tr>
            </thead>

            <tbody>

                <tr>
                    <td><%=s.getSid()%></td>
                    <td><%=s.getSname()%></td>
                    <td><%=s.getPhone()%></td>
                    <td><%=s.getEmail()%></td>
                    <td><%=s.getBranch()%></td>
                    <td><%=s.getLocation()%></td>
                </tr>

            </tbody>

        </table>

        <a href="dashboard.jsp" class="back-btn">
            ← Back To Dashboard
        </a>

    </div>

</body>

</html>