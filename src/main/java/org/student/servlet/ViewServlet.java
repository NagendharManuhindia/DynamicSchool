package org.student.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.student.domain.StudentCourse;
import org.student.service.StudentCourseService;
import org.student.utils.StudentCourseUtils;



public class ViewServlet extends HttpServlet{
	StudentCourseService stuadd = new StudentCourseUtils();

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=(String) request.getSession().getAttribute("user");
		if(user == null) {
			request.setAttribute("error", "session expired");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.include(request, response);
		}
		else {
			response.setContentType("text/html");
			String sid = request.getParameter("sid");
			List<StudentCourse> course = stuadd.getStudentCourseBySID(Integer.parseInt(sid));
			System.out.println("list size:" + course.size());
			request.setAttribute("StudentList", course);
			RequestDispatcher rd = request.getRequestDispatcher("GetAllCourseWithsid.jsp");
			rd.include(request, response);

		}
	}


}
