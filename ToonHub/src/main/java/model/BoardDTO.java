package model;

public class BoardDTO {
	private int num;
	private String nick;
	private String BoardTitle;
	private String BoardContent;
	private String BoardDate;
	
	
	public BoardDTO(int num, String nick, String boardTitle, String boardContent, String boardDate) {
		super();
		this.num = num;
		this.nick = nick;
		BoardTitle = boardTitle;
		BoardContent = boardContent;
		BoardDate = boardDate;
	}


	public int getNum() {
		return num;
	}


	public String getNick() {
		return nick;
	}


	public String getBoardTitle() {
		return BoardTitle;
	}


	public String getBoardContent() {
		return BoardContent;
	}


	public String getBoardDate() {
		return BoardDate;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public void setNick(String nick) {
		this.nick = nick;
	}


	public void setBoardTitle(String boardTitle) {
		BoardTitle = boardTitle;
	}


	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}


	public void setBoardDate(String boardDate) {
		BoardDate = boardDate;
	}
	
	
}
