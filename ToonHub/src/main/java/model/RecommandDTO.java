package model;

public class RecommandDTO {
	private int RecNum;
	private String nick;
	private String WebTitle;
	private String genre;
	private String RecCon;
	private String RecDate;
	
	public RecommandDTO(int recNum, String nick, String webTitle, String genre, String recCon, String recDate) {
		super();
		RecNum = recNum;
		this.nick = nick;
		WebTitle = webTitle;
		this.genre = genre;
		RecCon = recCon;
		RecDate = recDate;
	}
	
	public RecommandDTO( String nick, String webTitle, String genre, String recCon) {
		super();
		this.nick = nick;
		WebTitle = webTitle;
		this.genre = genre;
		RecCon = recCon;

	}

	public int getRecNum() {
		return RecNum;
	}

	public void setRecNum(int recNum) {
		RecNum = recNum;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getWebTitle() {
		return WebTitle;
	}

	public void setWebTitle(String webTitle) {
		WebTitle = webTitle;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getRecCon() {
		return RecCon;
	}

	public void setRecCon(String recCon) {
		RecCon = recCon;
	}

	public String getRecDate() {
		return RecDate;
	}

	public void setRecDate(String recDate) {
		RecDate = recDate;
	}


}
