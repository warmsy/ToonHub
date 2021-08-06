package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WebtoonDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	WebtoonDTO toondto = null;
	ArrayList<WebtoonDTO> Montoon = null;

	
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
	
	
	public ArrayList<WebtoonDTO> MonToon() {
		conn();

		String sql = "select * from Webtoon where web_day =\'월\' order by web_view";
		Montoon = new ArrayList<WebtoonDTO> ();	
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
	
			while(rs.next()) {
				String webTitle= rs.getString(1);
				String Genre= rs.getString(2);
				int view = rs.getInt(3);
				String webWriter = rs.getString(4);
				String platform = rs.getString(5);
				String day = rs.getString(6);
				String story = rs.getString(7);
				String webFile = rs.getString(8);
				String address = rs.getString(9);
				String state = rs.getString(10);
				// 파일 추가하기
			 new WebtoonDTO(webTitle, Genre, view, webWriter, platform, day, story, webFile, address, state);		
			 Montoon.add(toondto);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return Montoon;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
