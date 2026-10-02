package com.studentapp.servlets;

import java.io.IOException;
import java.util.ArrayList;

import com.studentapp.dao.StudentDaoImp;
import com.studentapp.dto.Studentdto;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewstudents")
public class ViewStudent extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StudentDaoImp s = new StudentDaoImp();
		ArrayList<Studentdto> list = s.getStudent();
		if(list!=null) {
			RequestDispatcher rd = req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("stdlist", list);
			rd.forward(req, resp);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("error", "No student found");
			rd.forward(req, resp);
		}
	}

}
