package model;

public class ToonMemberDTO {
	private String id;
	private String nick;
	private String pw;
	private String file;
	
	public ToonMemberDTO(String id, String nick, String pw, String file) {
		super();
		this.id = id;
		this.nick = nick;
		this.pw = pw;
		this.file = file;
	}

	public ToonMemberDTO(String id, String nick, String pw) {
		super();
		this.id = id;
		this.nick = nick;
		this.pw = pw;
	}
	public ToonMemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}


	public void setId(String id) {
		this.id = id;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getId() {
		return id;
	}
	public String getNick() {
		return nick;
	}
	public String getPw() {
		return pw;
	}
	public String getFile() {
		return file;
	}
}
