package kr.ac.mju.dislab.THA.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.mju.dislab.THA.CheckDAO;

@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		String op = req.getParameter("op");
		String val = req.getParameter("val");
		PrintWriter out = resp.getWriter();
		
		try {
			if (op.equals("email")) {
				if (CheckDAO.checkEmail(val)) {
					out.println("사용하실 수 없는 계정입니다.");
				} else {
					out.println("사용하실 수 있습니다.");
				}

			} else if (op.equals("name")) {
				if (CheckDAO.checkName(val)) {
					out.println("사용하실 수 없는 닉네임입니다.");
				} else {
					out.println("사용하실 수 있습니다.");
				}
			}
			out.close();
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}
	}
}
