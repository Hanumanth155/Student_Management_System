package com.studentapp.servlets;

import java.io.IOException;

import java.io.PrintWriter;

import com.studentapp.dao.StudentDao;
import com.studentapp.dao.StudentDaoImp;
import com.studentapp.dto.Studentdto;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/signup")
public class SignUp extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st = new StudentDaoImp();
		Studentdto s = new Studentdto(); 
		PrintWriter out = resp.getWriter();
		
		s.setSname(req.getParameter("name"));
		s.setBranch(req.getParameter("branch"));
		s.setEmail(req.getParameter("email"));
		s.setLocation(req.getParameter("loc"));
		s.setPhone(Long.parseLong(req.getParameter("phone")));
		String password = req.getParameter("pwd");
		String confirm = req.getParameter("conf");
		if(password.equals(confirm)) {
			s.setPassword(password);
			if(st.insertStudent(s)){
				RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
				req.setAttribute("pass", "SignUp Sucessfull");
				rd.forward(req, resp);
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
				req.setAttribute("fail", "SignUp failed");
				rd.forward(req, resp);
			}
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
			req.setAttribute("fail", "Password Mismatch");
			rd.forward(req, resp);
		}
	}

}