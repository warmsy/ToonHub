package model;

public class WebtoonDTO {
	
	private String webtitle;
	private String genre;
	private int view;
	private String webwriter;
	private String platform;
	private String webday;
	private String story;
	private String webfile;
	private String address;
	private String state;
	public WebtoonDTO(String webtitle, String genre, int view, String webwriter, String platform, String webday,
			String story, String webfile, String address, String state) {
		super();
		this.webtitle = webtitle;
		this.genre = genre;
		this.view = view;
		this.webwriter = webwriter;
		this.platform = platform;
		this.webday = webday;
		this.story = story;
		this.webfile = webfile;
		this.address = address;
		this.state = state;
	}
	public String getWebtitle() {
		return webtitle;
	}
	public void setWebtitle(String webtitle) {
		this.webtitle = webtitle;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getWebwriter() {
		return webwriter;
	}
	public void setWebwriter(String webwriter) {
		this.webwriter = webwriter;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getWebday() {
		return webday;
	}
	public void setWebday(String webday) {
		this.webday = webday;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getWebfile() {
		return webfile;
	}
	public void setWebfile(String webfile) {
		this.webfile = webfile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
	
	
}