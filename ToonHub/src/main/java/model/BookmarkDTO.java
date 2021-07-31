package model;

public class BookmarkDTO {
	private String nick;
	private String WebTitle;
	private String genre;
	public BookmarkDTO(String nick, String webTitle, String genre) {
		super();
		this.nick = nick;
		WebTitle = webTitle;
		this.genre = genre;
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
	

	
}
