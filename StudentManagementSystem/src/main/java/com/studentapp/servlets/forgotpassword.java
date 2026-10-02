package com.studentapp.servlets;

import java.io.IOException;

import com.studentapp.dao.StudentDao;
import com.studentapp.dao.StudentDaoImp;
import com.studentapp.dto.Studentdto;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/forgot")
public class forgotpassword extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st=new StudentDaoImp();
		String email=req.getParameter("email");
		long phone=Long.parseLong(req.getParameter("phone"));
		Studentdto s=st.getStudent(email,phone);
		
		if(s!=null) {
			if(req.getParameter("pwd").equals(req.getParameter("conf"))) {
				if(s.getPassword().equals(req.getParameter("conf"))) {
//					out.print("This password is already used");
					RequestDispatcher rd = req.getRequestDispatcher("forgotpassword.jsp");
					req.setAttribute("fail", "This password is already used");
					rd.forward(req, resp);
				}else {
					s.setPassword(req.getParameter("pwd"));
					if(st.updateStudent(s)) {
//						out.print("password updated");
						RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
						req.setAttribute("pass", "password updated");
						rd.forward(req, resp);
					}
					else {
//						out.print("some thing went wrong....");
						RequestDispatcher rd = req.getRequestDispatcher("forgotpassword.jsp");
						req.setAttribute("fail", "some thing went wrong....");
						rd.forward(req, resp);
					}
				}
			}else {
//				out.print("password missmatch");
				RequestDispatcher rd = req.getRequestDispatcher("forgotpassword.jsp");
				req.setAttribute("fail", "password missmatch");
				rd.forward(req, resp);
			}
		}else {
//			out.print("no data found..");
			RequestDispatcher rd = req.getRequestDispatcher("forgotpassword.jsp");
			req.setAttribute("fail", "no data found..");
			rd.forward(req, resp);
		}
			
	}
}



