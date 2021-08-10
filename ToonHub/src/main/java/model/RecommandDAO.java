package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecommandDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	
	RecommandDTO dto = null;
	ArrayList<RecommandDTO> recom_list = null;
	
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
			if (rs != null) {
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
	
	public ArrayList<RecommandDTO> Search_Cont(String item, String search) {
		conn();
		recom_list = new ArrayList<RecommandDTO>();
		String sql = "select * from recommand where ? = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, item);
			psmt.setString(2, search);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				int recom_num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String genre = rs.getString(4);
				String content = rs.getString(5);
				String date = rs.getString(6);
				
				dto = new RecommandDTO(recom_num, nick, title, genre, content, date);
				recom_list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return recom_list;
	}
}
