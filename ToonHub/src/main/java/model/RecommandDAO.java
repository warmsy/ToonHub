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
	ArrayList<RecommandDTO> result = null;
	int cnt = 0;
	String file = null;
	String writter = null;
	
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
	
	public int Insert(RecommandDTO dto) {
		conn();
		String sql = "Insert into recommand values (recom_seq.nextval,?,?,?,?,sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNick());
			psmt.setString(2, dto.getWebTitle());
			psmt.setString(3, dto.getGenre());
			psmt.setString(4, dto.getRecCon());
			
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<RecommandDTO> selectAll() {
		conn();
		recom_list = new ArrayList<RecommandDTO>(); 
		String sql = "select * from recommand";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String genre = rs.getString(4);
				String content = rs.getString(5);
				String date = rs.getString(6);
				
				dto = new RecommandDTO(num, nick, title, genre, content, date);
				recom_list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return recom_list;
	}
	
	public ArrayList<RecommandDTO> selectOne(String seq) {
		conn();
		recom_list = new ArrayList<RecommandDTO>(); 
		String sql = "select * from recommand where recom_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, seq);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String genre = rs.getString(4);
				String content = rs.getString(5);
				String date = rs.getString(6);
				
				dto = new RecommandDTO(num, nick, title, genre, content, date);
				recom_list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return recom_list;
	}
	
	public String Image(String title) {
		conn();
		String sql = "select web_file from webtoon where web_title = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, title);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				file = rs.getString(1); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return file;
		
	}
	
	public String writter(String title) {
		conn();
		String sql = "select web_writer from webtoon where web_title = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, title);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				writter = rs.getString(1); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return writter;
		
	}
	
	public ArrayList<RecommandDTO> Search(String item, String search){
		String sql = null;
		conn();
		if(item.equals("title")) {
			sql = "Select * from recommand where recom_title = ?";
		}else if(item.equals("genre")) {
			sql = "Select * from recommand where recom_genre = ?";
		}else {
			sql = "Select * from recommand where recom_nick = ?";
		}
		result = new ArrayList<RecommandDTO>();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, search);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String genre = rs.getString(4);
				String con = rs.getString(5);
				String date = rs.getString(6);
				
				dto = new RecommandDTO(num, nick, title, genre, con, date);
				
				result.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return result;
		
	}
}
