package sec01.ex01;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/boad/*")
public class StudentController extends HttpServlet {
	StudentDAO studentDAO;

	public void init(ServletConfig config) throws ServletException {
		studentDAO = new StudentDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		
		System.out.println("action:" + action);
		
		if (action == null || action.equals("/studentlists.do")) {
			List<StudentVO> studentList = studentDAO.listStudent();
			request.setAttribute("studentList", studentList);
			nextPage = "/student/listStudent.jsp";
		} else if (action.equals("/addstudent.do")) {
			String id = request.getParameter("id");
			String username = request.getParameter("username");
			String univ = request.getParameter("univ");
			String birth = request.getParameter("birth");
			String email = request.getParameter("email");
			StudentVO studentVO = new StudentVO(id,username,univ,birth,email);
			studentDAO.addStdent(studentVO);
			nextPage = "/boad/studentlists.do";

		} else if (action.equals("/studentForm.do")) {
			nextPage = "/student/StudentForm.jsp";
		} else {
			List<StudentVO> studentList = studentDAO.listStudent();
			request.setAttribute("studentList", studentList);
			nextPage = "/student/listStudent.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}
		
}


