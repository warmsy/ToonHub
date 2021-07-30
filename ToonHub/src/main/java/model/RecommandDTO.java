package model;

public class RecommandDTO {
	private String RecNum;
	private String nick;
	private String WebTitle;
	private String genre;
	private String RecCon;
	private String RecDate;
	public RecommandDTO(String recNum, String nick, String webTitle, String genre, String recCon, String RecDate) {
		super();
		RecNum = recNum;
		this.nick = nick;
		WebTitle = webTitle;
		this.genre = genre;
		RecCon = recCon;
		RecDate = RecDate;
	}
	public void setRecNum(String recNum) {
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
	public String getRecNum() {
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
