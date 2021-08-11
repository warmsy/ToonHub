package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	ArrayList<BoardDTO> list = null;
	BoardDTO dto = null;
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

	public int Insert(BoardDTO dto) {
		conn();
		String sql = "insert into board values(board_seq.nextval,?,?,?,sysdate)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNick());
			psmt.setString(2, dto.getBoardTitle());
			psmt.setString(3, dto.getBoardContent());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
		
	}
	
	public ArrayList<BoardDTO> SelectAll(){
		conn();
		list = new ArrayList<BoardDTO>();
		String sql = "select * from board";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String cont = rs.getString(4);
				String date = rs.getString(5);
				
				dto = new BoardDTO(num, nick, title, cont, date);
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
	
	public ArrayList<BoardDTO> Selectone(String seq){
		conn();
		list = new ArrayList<BoardDTO>();
		String sql = "select * from board where board_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, seq);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String cont = rs.getString(4);
				String date = rs.getString(5);
				
				dto = new BoardDTO(num, nick, title, cont, date);
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
	
	public ArrayList<BoardDTO> Search(String item, String search){
		conn();
		list = new ArrayList<BoardDTO>();
		String sql = null;
		if(item.equals("title")) {
		sql = "select * from board where board_title = ?";
		}else if(item.equals("nick")) {
			sql = "select * from board where board_nick  = ?";
		}else {
			sql = "select * from board where baord_con = ?";
		}
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, search);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String nick = rs.getString(2);
				String title = rs.getString(3);
				String cont = rs.getString(4);
				String date = rs.getString(5);
				
				dto = new BoardDTO(num, nick, title, cont, date);
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
