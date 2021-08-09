package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ToonMemberDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	int cnt = 0;
	
	ToonMemberDTO logindto = null;
	
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_e3";
			String db_pw = "smhrd3";
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
	
	public int join(ToonMemberDTO dto) {
		conn();
		
		try {
			String sql = "insert into ToonMember values(?,?,?,null)";
			psmt = conn.prepareStatement(sql);
			psmt.setNString(1, dto.getId());
			psmt.setNString(2, dto.getNick());
			psmt.setNString(3, dto.getPw());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	public ToonMemberDTO login(ToonMemberDTO dto) {
		conn();
		try {
			String sql = "select * from ToonMember where mem_id=? and mem_pw =?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();	
			
			if(rs.next()) {
				String id = rs.getString(1);
				String nick = rs.getString(2);
				String pw = rs.getString(3);
				String file = rs.getString(4);
			
			logindto = new ToonMemberDTO(id, nick, pw, file);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		return logindto;
	}
	
	public int Mypage(ToonMemberDTO dto) {
		conn();
		
		try {
			String sql = "select * from ToonMember";
			// mypage에서 정보를 보여주고 수정은 어디서 하지..?
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();	
			
			if(rs.next()) {
				String id = rs.getString(1);
				String nick = rs.getString(2);
				String pw = rs.getString(3);
				String file = rs.getString(4);
			
			logindto = new ToonMemberDTO(id, nick, pw, file);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
