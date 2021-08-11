package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BookMarkDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	BookMarkDTO dto = null;
	ArrayList<BookMarkDTO> list = null;
	int cnt = 0;
	
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public int InsertMark(BookMarkDTO dto) {
		conn();
		String sql = "Insert into bookmark values(bm_seq.nextval,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNick());
			psmt.setString(2, dto.getWebTitle());
			psmt.setString(3, dto.getGenre());
			psmt.setString(4, dto.getWritter());
			psmt.setString(5, dto.getFile());
			
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<BookMarkDTO> SelectMark(String nick){
		conn();
		list = new ArrayList<BookMarkDTO>();
		String sql = "Select * from bookmark where bm_nick = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int bm_num = rs.getInt(1);
				String bm_nick = rs.getString(2);
				String bm_title = rs.getString(3);
				String bm_genre = rs.getString(4);
				String bm_writter = rs.getString(5);
				String bm_file = rs.getString(6);
				dto = new BookMarkDTO(bm_num, bm_nick, bm_title, bm_genre, bm_writter, bm_file);
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
		
	}

}
