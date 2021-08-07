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
	WebtoonDTO dto = null;
	ArrayList<WebtoonDTO> monlist = null;
	ArrayList<WebtoonDTO> tuelist = null;
	
	
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
	
	public ArrayList<WebtoonDTO> monday() {
		conn();
		
		String sql = "select *  from webtoon where web_day =\'¿ù\' order by web_view";
		monlist = new ArrayList<WebtoonDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				String webtitle = rs.getString(1);
				String genre = rs.getString(2);
				int view = rs.getInt(3);
				String webwriter = rs.getString(4);
				String platform = rs.getString(5);
				String webday = rs.getString(6);
				String story = rs.getString(7);
				String webfile = rs.getString(8);
				String address= rs.getString(9);
				String state = rs.getString(10);
				
				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address, state);
				monlist.add(dto);
			};
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return monlist;
	}
	public ArrayList<WebtoonDTO> tuelist() {
		conn();
		
		String sql = "select *  from webtoon where web_day =\'È­\' order by web_view";
		tuelist = new ArrayList<WebtoonDTO>();
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				String webtitle = rs.getString(1);
				String genre = rs.getString(2);
				int view = rs.getInt(3);
				String webwriter = rs.getString(4);
				String platform = rs.getString(5);
				String webday = rs.getString(6);
				String story = rs.getString(7);
				String webfile = rs.getString(8);
				String address= rs.getString(9);
				String state = rs.getString(10);
				
				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address, state);
				tuelist.add(dto);
			};
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return tuelist;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
