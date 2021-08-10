package model;

public class RecommandDTO {
	private int RecNum;
	private String nick;
	private String WebTitle;
	private String genre;
	private String RecCon;
	private String RecDate;
	public RecommandDTO(int recNum, String nick, String webTitle, String genre, String recCon, String RecDate) {
		super();
		RecNum = recNum;
		this.nick = nick;
		WebTitle = webTitle;
		this.genre = genre;
		RecCon = recCon;
		this.RecDate = RecDate;
	}
	public void setRecNum(int recNum) {
		RecNum = recNum;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public void setWebTitle(String webTitle) {
		WebTitle = webTitle;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public void setRecCon(String recCon) {
		RecCon = recCon;
	}
	public void setRecDate(String RecDate) {
		RecDate = RecDate;
	}
	public int getRecNum() {
		return RecNum;
	}
	public String getNick() {
		return nick;
	}
	public String getWebTitle() {
		return WebTitle;
	}
	public String getGenre() {
		return genre;
	}
	public String getRecCon() {
		return RecCon;
	}
	public String getRecDate() {
		return RecDate;
	}
	
}
