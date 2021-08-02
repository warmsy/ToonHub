package model;

public class ReviewDTO {
	private String RevNum;
	private String nick;
	private String WebTitle;
	private String RevCon;
	private int score;
	private String RevDate;
	public ReviewDTO(String revNum, String nick, String webTitle, String revCon, int score, String revDate) {
		super();
		RevNum = revNum;
		this.nick = nick;
		WebTitle = webTitle;
		RevCon = revCon;
		this.score = score;
		RevDate = revDate;
	}
	public void setRevNum(String revNum) {
		RevNum = revNum;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public void setWebTitle(String webTitle) {
		WebTitle = webTitle;
	}
	public void setRevCon(String revCon) {
		RevCon = revCon;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public void setRevDate(String revDate) {
		RevDate = revDate;
	}
	public String getRevNum() {
		return RevNum;
	}
	public String getNick() {
		return nick;
	}
	public String getWebTitle() {
		return WebTitle;
	}
	public String getRevCon() {
		return RevCon;
	}
	public int getScore() {
		return score;
	}
	public String getRevDate() {
		return RevDate;
	}
	
}
