package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class WebMemberDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	
	
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void join(ToonMemberDTO dto) {
		conn();
		
		
		try {
			String sql = "insert into ToonMenber values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setNString(1, dto.getId());
			psmt.setNString(2, dto.getNick());
			psmt.setNString(3, dto.getPw());
			psmt.setNString(4, dto.getFile());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
	
}
