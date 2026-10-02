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
import jakarta.servlet.http.HttpSession;
@WebServlet("/update")
public class Update extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException,IOException {
		StudentDao st=new StudentDaoImp();
		HttpSession session=req.getSession(false);
		Studentdto s=(Studentdto) session.getAttribute("student");
		
		s.setSname(req.getParameter("name"));
		s.setBranch(req.getParameter("branch"));
		s.setLocation(req.getParameter("location"));
		
		if(st.updateStudent(s)) {
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			req.setAttribute("success", "update succesfully");
			rd.forward(req, resp);
		}else {
			RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
			req.setAttribute("fail","Not updated");
			rd.forward(req, resp);
		}
	}
}
