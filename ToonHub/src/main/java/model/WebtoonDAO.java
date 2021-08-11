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
	ArrayList<WebtoonDTO> wedlist = null;
	ArrayList<WebtoonDTO> thulist = null;
	ArrayList<WebtoonDTO> frilist = null;
	ArrayList<WebtoonDTO> satlist = null;
	ArrayList<WebtoonDTO> sunlist = null;
	
	ArrayList<WebtoonDTO> detail = null;
	
	ArrayList<WebtoonDTO> romance = null;
	ArrayList<WebtoonDTO> drama = null;
	ArrayList<WebtoonDTO> action = null;
	ArrayList<WebtoonDTO> fantasy = null;
	ArrayList<WebtoonDTO> omnibus = null;
	ArrayList<WebtoonDTO> gag = null;
	
	
	ArrayList<WebtoonDTO> bomtoon = null;
	ArrayList<WebtoonDTO> toptoon = null;
	ArrayList<WebtoonDTO> platformlist = null;
	
	ArrayList<WebtoonDTO> result = null;

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

		String sql = "select *  from webtoon where web_day = \'월\' and web_state = \'연재\' order by web_view";
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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				monlist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return monlist;
	}

	public ArrayList<WebtoonDTO> tuelist() {
		conn();

		String sql = "select *  from webtoon where web_day like \'%화\' and web_state = \'연재\' order by web_view";
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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				tuelist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return tuelist;
	}

	public ArrayList<WebtoonDTO> wedlist() {
		conn();

		String sql = "select *  from webtoon where web_day like \'%수\' and web_state = \'연재\' order by web_view";
		wedlist = new ArrayList<WebtoonDTO>();

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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				wedlist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return wedlist;
	}

	public ArrayList<WebtoonDTO> thulist() {
		conn();

		String sql = "select *  from webtoon where web_day like \'%목\' and web_state = \'연재\' order by web_view";
		thulist = new ArrayList<WebtoonDTO>();

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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				thulist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return thulist;
	}

	public ArrayList<WebtoonDTO> frilist() {
		conn();

		String sql = "select *  from webtoon where web_day like \'%금\' and web_state = \'연재\' order by web_view";
		frilist = new ArrayList<WebtoonDTO>();

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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				frilist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return frilist;
	}

	public ArrayList<WebtoonDTO> satlist() {
		conn();

		String sql = "select *  from webtoon where web_day like \'%토\' and web_state = \'연재\' order by web_view";
		satlist = new ArrayList<WebtoonDTO>();

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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				satlist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return satlist;
	}

	public ArrayList<WebtoonDTO> sunlist() {
		conn();

		String sql = "select *  from webtoon where web_day like \'%일\' and web_state = \'연재\' order by web_view";
		sunlist = new ArrayList<WebtoonDTO>();

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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				sunlist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return sunlist;
	}

	public ArrayList<WebtoonDTO> endlist() {
		conn();

		String sql = "select *  from webtoon where web_state = \'완결\' order by web_view";
		sunlist = new ArrayList<WebtoonDTO>();

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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				sunlist.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return sunlist;
	}

	// 요일 메소드 끝

	// 디테일 선택 메소드

	public ArrayList<WebtoonDTO> selectDetail(String title) {
		conn();
		detail = new ArrayList<WebtoonDTO>();
		String sql = "select * from webtoon where web_title = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, title);
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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				detail.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return detail;

	}

	public ArrayList<WebtoonDTO> romance() {
		
		conn();
		
		String sql = "select * from webtoon where web_genre =\'로맨스\' order by web_view";
		romance = new ArrayList<WebtoonDTO>();
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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				romance.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return romance;	
}
	
public ArrayList<WebtoonDTO> drama() {
		
		conn();
		
		String sql = "select * from webtoon where web_genre =\'드라마\' order by web_view";
		drama = new ArrayList<WebtoonDTO>();
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
				String address = rs.getString(9);
				String state = rs.getString(10);

				dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
						state);
				drama.add(dto);
			}
			;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}return drama;	
}
	
public ArrayList<WebtoonDTO> action() {
	
	conn();
	
	String sql = "select * from webtoon where web_genre =\'액션\' order by web_view";
	action = new ArrayList<WebtoonDTO>();
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
			String address = rs.getString(9);
			String state = rs.getString(10);

			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			action.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return action;	
}
	
public ArrayList<WebtoonDTO> fantasy() {
	
	conn();
	
	String sql = "select * from webtoon where web_genre =\'판타지\' order by web_view";
	fantasy = new ArrayList<WebtoonDTO>();
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
			String address = rs.getString(9);
			String state = rs.getString(10);

			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			fantasy.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return fantasy;	
}

public ArrayList<WebtoonDTO> omnibus() {
	
	conn();
	
	String sql = "select * from webtoon where web_genre =\'옴니버스\' order by web_view";
	omnibus = new ArrayList<WebtoonDTO>();
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
			String address = rs.getString(9);
			String state = rs.getString(10);

			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			omnibus.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return omnibus;	
}

public ArrayList<WebtoonDTO> gag() {
	
	conn();
	
	String sql = "select * from webtoon where web_genre =\'개그\' order by web_view";
	gag = new ArrayList<WebtoonDTO>();
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
			String address = rs.getString(9);
			String state = rs.getString(10);

			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			gag.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return gag;	
}


public ArrayList<WebtoonDTO> bomtoon() {
	
	conn();
	
	String sql = "select * from webtoon where web_platform =\'봄툰\' order by web_view";
	bomtoon = new ArrayList<WebtoonDTO>();
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
			String address = rs.getString(9);
			String state = rs.getString(10);

			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			bomtoon.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return bomtoon;	
}


public ArrayList<WebtoonDTO> toptoon() {
	
	conn();
	
	String sql = "select * from webtoon where web_platform =\'탑툰\' order by web_view";
	toptoon = new ArrayList<WebtoonDTO>();
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
			String address = rs.getString(9);
			String state = rs.getString(10);

			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			toptoon.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return toptoon;	
}

public ArrayList<WebtoonDTO> Search(String item, String search) {
	String sql = null;
	conn();
	if(item.equals("title")){
		sql = "select * from webtoon where web_title = ?";	
	} else if(item.equals("genre")) {
		sql = "select * from webtoon where web_genre = ?";	
	} else if(item.equals("writter")) {
		sql = "select * from webtoon where web_writer = ?";	
	} else {
		sql = "select * from webtoon where web_platform = ?";	
	}
	result = new ArrayList<WebtoonDTO>();
	try {
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, search);
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
			String address = rs.getString(9);
			String state = rs.getString(10);
			
			dto = new WebtoonDTO(webtitle, genre, view, webwriter, platform, webday, story, webfile, address,
					state);
			result.add(dto);
		}
		;
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}return result;	
}


	
}