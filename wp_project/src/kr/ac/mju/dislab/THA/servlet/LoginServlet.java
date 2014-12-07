package kr.ac.mju.dislab.THA.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.mju.dislab.THA.User;
import kr.ac.mju.dislab.THA.UserDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	public LoginServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String actionUrl = "login.jsp";

		RequestDispatcher dispatcher = req.getRequestDispatcher(actionUrl);
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		User user = null;

		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String actionUrl = "";
		List<String> errorMsgs = new ArrayList<String>();

		try {
			if ((user = UserDAO.checkLogin(email, pwd)) != null) {
				HttpSession session = req.getSession();
				session.setAttribute("id", user.getId());
				//session.setAttribute("name", user.getName());
				//session.setAttribute("phoneNum", user.getPhoneNum());
				req.setAttribute("op", "success");
				actionUrl = "success.jsp";
			} else {
				errorMsgs.add("아이디와 비밀번호를 확인해주세요");
				actionUrl = "error.jsp";
			}
		} catch (NamingException | SQLException e) {
			errorMsgs.add(e.getMessage());
			actionUrl = "error.jsp";
		}

		req.setAttribute("errorMsgs", errorMsgs);
		RequestDispatcher dispatcher = req.getRequestDispatcher(actionUrl);
		dispatcher.forward(req, resp);
	}
}
