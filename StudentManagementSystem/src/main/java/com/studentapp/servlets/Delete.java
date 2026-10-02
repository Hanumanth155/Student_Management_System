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

@WebServlet("/Delete")
public class Delete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id =Integer.parseInt(req.getParameter("Sid"));
		Studentdto s = new Studentdto();
		s.setSid(id);
		StudentDao st = new StudentDaoImp();
		if(st.deleteStudent(s)) {
//			RequestDispatcher rd = req.getRequestDispatcher("viewstudents.jsp");
//			req.setAttribute("success", "Deleted Succesfully");
			resp.sendRedirect("viewstudents?success=Deleted Succesfully");
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("fail", "Not Deleted ");
			rd.forward(req, resp);
		}
	}
}
