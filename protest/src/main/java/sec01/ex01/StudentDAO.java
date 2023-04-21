package sec01.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class StudentDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	
	public StudentDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory =(DataSource) envContext.lookup("jdbc/servletex");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List listStudent(){
		List studentlist = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select*from studentlists";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				String id = rs.getString("id");
				String username = rs.getString("username");
				String univ = rs.getString("univ");
				String birth = rs.getString("birth");
				String email = rs.getString("email");
				StudentVO studentVO = new StudentVO(id, username, univ, birth, email);
				studentlist.add(studentVO);	
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return studentlist;
	}
	public void addStdent(StudentVO s) {
		try {
			conn = dataFactory.getConnection();
			String id = s.getId();
			String username = s.getUsername();
			String univ = s.getUniv();
			String birth = s.getBirth();
			String email = s.getEmail();
			String query = "INSERT INTO studentlists(id, username, univ, birth, email)"+" VALUES(?,?,?,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, username);
			pstmt.setString(3, univ);
			pstmt.setString(4, birth);
			pstmt.setString(5, email);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
