package kr.ac.mju.dislab.THA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO {
	public static DataSource getDataSource() throws NamingException {
		Context initCtx = null;
		Context envCtx = null;

		// Obtain our environment naming context
		initCtx = new InitialContext();
		envCtx = (Context) initCtx.lookup("java:comp/env");

		// Look up our data source
		return (DataSource) envCtx.lookup("jdbc/WebDB");
	}
	
	public static PageResult<User> getPage(int page, int numItemsInPage) 
			throws SQLException, NamingException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;		

		if (page <= 0) {
			page = 1;
		}
		
		DataSource ds = getDataSource();
		PageResult<User> result = new PageResult<User>(numItemsInPage, page);
		
		
		int startPos = (page - 1) * numItemsInPage;
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			
			// users 테이블: user 수 페이지수 개산
	 		rs = stmt.executeQuery("SELECT COUNT(*) FROM users");
			rs.next();
			
			result.setNumItems(rs.getInt(1));
			
			rs.close();
			rs = null;
			stmt.close();
			stmt = null;
			
	 		// users 테이블 SELECT
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM users ORDER BY name LIMIT " + startPos + ", " + numItemsInPage);
			
			while(rs.next()) {
				result.getList().add(new User(rs.getInt("id"),
						rs.getString("email"),
						rs.getString("pwd"),
						rs.getString("phoneNum"),
						rs.getString("name"),
						rs.getInt("admin")));
			}
		} finally {
			// 무슨 일이 있어도 리소스를 제대로 종료
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		return result;
	}
	
	public static boolean changeAdmin(User user) throws NamingException, SQLException {
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		DataSource ds = getDataSource();
		
		try {
			conn = ds.getConnection();
			
			stmt = conn.prepareStatement(
					"UPDATE users" + 
					"SET admin=?" + 
					"WHERE id=?"
					);
			stmt.setInt(1, user.getAdmin());
			stmt.setInt(2, user.getId());
			
			result = stmt.executeUpdate();
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		
		return (result == 1);
	}
	
	public static User checkLogin(String email, String pwd) throws NamingException, SQLException {
		User user = null;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		DataSource ds = getDataSource();
		
		try {
			conn = ds.getConnection();
			
			stmt = conn.prepareStatement("SELECT * FROM users WHERE email = ? AND pwd = ?");
			stmt.setString(1, email);
			stmt.setString(2, pwd);
			
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				user = new User(rs.getInt("id"),
						rs.getString("email"),
						rs.getString("pwd"),
						rs.getString("phoneNum"),
						rs.getString("name"),
						rs.getInt("admin"));
				return user;
			} else {
				return user;
			}
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
	}

	public static User findById(int id) throws NamingException, SQLException {
		User user = null;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		DataSource ds = getDataSource();
		
		try {
			conn = ds.getConnection();
			
			stmt = conn.prepareStatement("SELECT * FROM users WHERE id = ?");
			stmt.setInt(1, id);
			
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				user = new User(rs.getInt("id"),
						rs.getString("email"),
						rs.getString("pwd"),
						rs.getString("phoneNum"),
						rs.getString("name"));
				
			}
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		
		return user;
	}
	
	public static boolean create(User user) throws NamingException, SQLException {
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		DataSource ds = getDataSource();
		
		try {
			conn = ds.getConnection();
			
			stmt = conn.prepareStatement(
					"INSERT INTO users(email, pwd, phoneNum, name)" + 
					"VALUES(?, ?, ?, ?)"
					);
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPwd());
			stmt.setString(3, user.getPhoneNum());
			stmt.setString(4, user.getName());
			
			result = stmt.executeUpdate();
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		
		return (result == 1);
	}
	
	public static boolean update(User user) throws NamingException, SQLException {
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		DataSource ds = getDataSource();
		
		try {
			conn = ds.getConnection();
			
			stmt = conn.prepareStatement(
					"UPDATE users " + 
					"SET pwd=?, phoneNum=?, name=?" + 
					"WHERE id=?"
					);
			stmt.setString(1, user.getPwd());
			stmt.setString(2, user.getPhoneNum());
			stmt.setString(3, user.getName());
			stmt.setInt(4, user.getId());

			result = stmt.executeUpdate();
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		
		return (result == 1);
	}
	
	public static boolean delete(int id) throws NamingException, SQLException {
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		DataSource ds = getDataSource();
		
		try {
			conn = ds.getConnection();
			
			stmt = conn.prepareStatement("DELETE FROM users WHERE id=?");
			stmt.setInt(1, id);
			
			result = stmt.executeUpdate();
		} finally {
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		
		return (result == 1);
	}
}
