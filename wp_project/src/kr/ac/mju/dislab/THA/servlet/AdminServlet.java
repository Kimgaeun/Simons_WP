package kr.ac.mju.dislab.THA.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.mju.dislab.THA.PageResult;
import kr.ac.mju.dislab.THA.User;
import kr.ac.mju.dislab.THA.UserDAO;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {

	private int getIntFromParameter(String str, int defaultValue) {
		int id;

		try {
			id = Integer.parseInt(str);
		} catch (Exception e) {
			id = defaultValue;
		}
		return id;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String op = req.getParameter("op");
		String actionUrl = "";
		boolean ret;

		if ((int) req.getSession(false).getAttribute("ad") == 1) {
			if (op == null || op.length() == 0) {
				op = "index";
			}
			try {
				if (op.equals("index")) {
					actionUrl = "admin_index.jsp";
				} else if (op.equals("user")) {
					int page = getIntFromParameter(req.getParameter("page"), 1);
					PageResult<User> users = UserDAO.getPage(page, 10);
					req.setAttribute("users", users);
					req.setAttribute("page", page);
					actionUrl = "admin_user.jsp";
				} else if (op.equals("user_update")) {
					int id = getIntFromParameter(req.getParameter("id"), -1);
					User user = UserDAO.findById(id);
					req.setAttribute("user", user);
					actionUrl = "user_edit.jsp";
				} else if (op.equals("brand")) {
					actionUrl = "brand_edit.jsp";
				} else if (op.equals("category")) {
					actionUrl = "category_edit.jsp";
				}
			} catch (Exception e) {
				req.setAttribute("error", e.getMessage());
				e.printStackTrace();
				actionUrl = "error.jsp";
			}
		} else {
			actionUrl = "error.jsp";
			req.setAttribute("error", "관리자 권한이 없습니다.");
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher(actionUrl);
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}
}
