package kr.ac.mju.dislab.THA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class PostDAO {
	public static DataSource getDataSource() throws NamingException {
		Context initCtx = null;
		Context envCtx = null;

		// Obtain our environment naming context
		initCtx = new InitialContext();
		envCtx = (Context) initCtx.lookup("java:comp/env");

		// Look up our data source
		return (DataSource) envCtx.lookup("jdbc/WebDB");
	}

	public static Post findById(int id) throws NamingException, SQLException {
		Post post = null;

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		DataSource ds = getDataSource();

		try {
			conn = ds.getConnection();

			stmt = conn.prepareStatement("SELECT * FROM posts WHERE id = ?");
			stmt.setInt(1, id);

			rs = stmt.executeQuery();

			if (rs.next()) {
				post = new Post(rs.getInt("id"), 				
						rs.getInt("userId"),
						rs.getString("title"),		
						rs.getString("brand"),
						rs.getString("linkUrl"), 	
						rs.getString("imgUrl"),
						rs.getString("content"), 	
						rs.getDate("startDate"),
						rs.getDate("endDate"));
			}
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}

		return post;
	}

	public static boolean create(Post post) throws NamingException, SQLException {
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		DataSource ds = getDataSource();

		try {
			conn = ds.getConnection();

			stmt = conn.prepareStatement(
					"INSERT INTO posts(userId, title, brandName, linkUrl, imgUrl, content, startDate, endDate)" + 
					"VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
			stmt.setInt(1, post.getUserId());
			stmt.setString(2, post.getTitle());
			stmt.setString(3, post.getBrandName());
			stmt.setString(4, post.getLinkUrl());
			stmt.setString(5, post.getImgUrl());
			stmt.setString(6, post.getContent());
			stmt.setDate(7, post.getStartDate());
			stmt.setDate(8, post.getEndDate());

			result = stmt.executeUpdate();
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		return (result == 1);
	}

	public static boolean update(Post post) throws NamingException, SQLException {
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		DataSource ds = getDataSource();

		try {
			conn = ds.getConnection();

			stmt = conn.prepareStatement("UPDATE posts"
			+ "SET userId=?, title=?, brandName=?, linkUrl=?, imgUrl=?, content=?, startDate=?, endDate=?" + 
					"WHERE id=?");
			stmt.setInt(1, post.getUserId());
			stmt.setString(2, post.getTitle());
			stmt.setString(3, post.getBrandName());
			stmt.setString(4, post.getLinkUrl());
			stmt.setString(5, post.getImgUrl());
			stmt.setString(6, post.getContent());
			stmt.setDate(7, post.getStartDate());
			stmt.setDate(8, post.getEndDate());
			stmt.setInt(9, post.getId());

			result = stmt.executeUpdate();
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}		
		return (result == 1);
	}
}
