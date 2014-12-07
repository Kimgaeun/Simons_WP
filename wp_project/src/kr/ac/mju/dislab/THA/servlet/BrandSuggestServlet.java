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

import kr.ac.mju.dislab.THA.BrandDAO;

@WebServlet("/BrandSuggestServlet")
public class BrandSuggestServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		String query = req.getParameter("query");
		PrintWriter out = resp.getWriter();
		try {
			if (query == null) {
				out.println("");
			} else {
				if (query.length() > 0) {
					for (String brand : BrandDAO.getBrands()) {
						if (brand.contains(query)) {
							out.println("<li onclick=\"fill('"+brand+"');\" class=\"col-sm-4\">" + brand + "</li>");
						}
					}
				}
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}
		out.close();
	}
}
