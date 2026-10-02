package com.studentapp.servlets;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Scanner;

import com.studentapp.dao.StudentDaoImp;
import com.studentapp.dao.StudentDao;
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
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet{

//	@Override 
//	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		StudentDao st = new StudentDaoImp();
//		Studentdto s  =st.getStudent(req.getParameter("email"), req.getParameter("pwd"));
//		PrintWriter out = resp.getWriter();
//		if(s!=null) {
//			out.print("Login Successful");
//		}else {
//			out.print("Login Failed");
//		}
//		
//	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StudentDao st = new StudentDaoImp();
		Studentdto s  =st.getStudent(req.getParameter("email"), req.getParameter("pwd"));
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession(true);
//		System.out.println("Name is :"+ s.getSname());
//		System.out.println("Name is :"+ s.getSid());
		if(s!=null) {
			RequestDispatcher rd = req.getRequestDispatcher("dashboard.jsp");
			req.setAttribute("pass", "Login sucessfull");
//			req.setAttribute("st", s);
			session.setAttribute("student", s);
			rd.forward(req, resp);
		}else {
//			out.print("Login Failed");
			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
			req.setAttribute("fail", "Login failed");
			rd.forward(req, resp);
		}
	}

}
