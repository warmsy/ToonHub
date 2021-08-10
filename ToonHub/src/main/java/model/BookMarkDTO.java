package model;

public class BookMarkDTO {
	private String nick;
	private String WebTitle;
	private String genre;
	private String writter;
	private String file;
	public BookMarkDTO(String nick, String webTitle, String genre, String writter, String file) {
		super();
		this.nick = nick;
		WebTitle = webTitle;
		this.genre = genre;
		this.writter = writter;
		this.file = file;
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
	public String getWritter() {
		return writter;
	}
	public void setWritter(String writter) {
		this.writter = writter;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
}
