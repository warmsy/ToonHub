package model;

public class WebtoonDTO {
	
	private String WebTitle;
	private String genre;
	private String WebWriter;
	private int View;
	private String Platform;
	private String WebDay;
	private String Story;
	private String WebFile;
	private String Address;
	private String State;
	public WebtoonDTO(String webTitle, String genre, String webWriter, int view, String platform, String webDay,
			String story, String webFile, String address, String state) {
		super();
		WebTitle = webTitle;
		this.genre = genre;
		WebWriter = webWriter;
		View = view;
		Platform = platform;
		WebDay = webDay;
		Story = story;
		WebFile = webFile;
		Address = address;
		State = state;
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
	public String getWebWriter() {
		return WebWriter;
	}
	public void setWebWriter(String webWriter) {
		WebWriter = webWriter;
	}
	public int getView() {
		return View;
	}
	public void setView(int view) {
		View = view;
	}
	public String getPlatform() {
		return Platform;
	}
	public void setPlatform(String platform) {
		Platform = platform;
	}
	public String getWebDay() {
		return WebDay;
	}
	public void setWebDay(String webDay) {
		WebDay = webDay;
	}
	public String getStory() {
		return Story;
	}
	public void setStory(String story) {
		Story = story;
	}
	public String getWebFile() {
		return WebFile;
	}
	public void setWebFile(String webFile) {
		WebFile = webFile;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	
	
	
}
