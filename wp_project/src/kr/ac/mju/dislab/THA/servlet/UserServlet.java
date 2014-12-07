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

import kr.ac.mju.dislab.THA.User;
import kr.ac.mju.dislab.THA.UserDAO;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
	public UserServlet() {
		super();
	}
	
	private int getIntFromParameter(String str, int defaultValue) {
		int id;
		
		try { id = Integer.parseInt(str); } 
		catch (Exception e) { id = defaultValue; }
		return id;
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String op = req.getParameter("op");
		String actionUrl = "";
		boolean ret;
		if(op == null || op.length() == 0) {
			op = "index";
		}
		
		int id = getIntFromParameter(req.getParameter("id"), -1);
		
		try {
			if (op.equals("index")) {
				actionUrl = "index.jsp";
			} else if (op.equals("signup")) {
				actionUrl = "signup.jsp";
				req.setAttribute("method", "POST");
				req.setAttribute("user", new User());
			} else if (op.equals("update")) {
				id = (int)req.getSession(false).getAttribute("id");
				User user = UserDAO.findById(id);
				actionUrl = "user_edit.jsp";
				req.setAttribute("method", "PUT");
				req.setAttribute("user", user);
			} else if (op.equals("delete")) {
				ret = UserDAO.delete(id);
				req.setAttribute("result", ret);
				
				if (ret) {
					req.setAttribute("msg", "사용자 정보가 삭제되었습니다.");
					actionUrl = "success.jsp";
				} else {
					req.setAttribute("error",  "사용자 정보 삭제에 실패했습니다.");
					actionUrl = "error.jsp";
				}
			} else if (op.equals("show")) {
				id = (int)req.getSession(false).getAttribute("id");
				User user = UserDAO.findById(id);
				actionUrl = "user_MyPage.jsp";
				req.setAttribute("user", user);
			}
		} catch (Exception e) {
			req.setAttribute("error", e.getMessage());
			e.printStackTrace();
			actionUrl = "error.jsp";
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher(actionUrl);
		dispatcher.forward(req,  resp);
	}
	
	private boolean isRegisterMode(HttpServletRequest request) {
		String method = request.getParameter("method");
		return method == null || method.equals("POST");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String actionUrl = "";
		boolean ret = false;
		String msg;
		User user = new User();
		
		req.setCharacterEncoding("utf-8");
		
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String pwd_confirm = req.getParameter("pwd_confirm");
		String phoneNum = req.getParameter("phoneNum");
		String name = req.getParameter("name");
		
		List<String> errorMsgs = new ArrayList<String>();
		
		if (!isRegisterMode(req)) {
			if (pwd == null || pwd.length() < 6) {
				errorMsgs.add("비밀번호는 6자리 이상으로 설정해주세요");
			} 
			
			if (!pwd.equals(pwd_confirm)) {
				errorMsgs.add("비밀번호가 일치하지 않습니다.");
			}
		} else {
			user.setId(getIntFromParameter(req.getParameter("id"), -1));
		}

		if (email == null || email.trim().length() == 0) {
			errorMsgs.add("ID를 입력해주세요.");
		}
		if (name == null || name.trim().length() == 0) {
			errorMsgs.add("닉네임을 입력해주세요.");
		}
		
		user.setEmail(email);
		user.setPwd(pwd);
		user.setPhoneNum(phoneNum);
		user.setName(name);
		
		try {
			if (isRegisterMode(req)) {
				ret = UserDAO.create(user);
				msg = "<b>사용자가 생성되었습니다.";
			} else {
				ret = UserDAO.update(user);
				actionUrl = "success.jsp";
				msg = "<b>사용자 정보가 수정되었습니다.";
			}
			if (ret != true) {
				errorMsgs.add("알수 없는 명령입니다.");
				actionUrl = "error.jsp";
			} else {
				req.setAttribute("msg", msg);
				actionUrl = "success.jsp";
			}
		} catch (SQLException | NamingException e) {
			errorMsgs.add(e.getMessage());
			actionUrl = "error.jsp";
		}
		
		if (!errorMsgs.isEmpty()) {
			actionUrl = "error.jsp";
		}

		req.setAttribute("errorMsgs", errorMsgs);
		RequestDispatcher dispatcher = req.getRequestDispatcher(actionUrl);
		dispatcher.forward(req,  resp);
	}

}
