package model;

public class WebtoonDTO {
	
	private String WebTitle;
	private String genre;
	private int View;
	private String WebWriter;
	private String Platform;
	private String WebDay;
	private String Story;
	private String WebFile;
	private String Address;
	private String State;
	
	public WebtoonDTO(String webTitle, String genre, int view, String webWriter, String platform, String webDay,
			String story, String webFile, String address, String state) {
		super();
		this.WebTitle = webTitle;
		this.genre = genre;
		this.View = view;
		this.WebWriter = webWriter;
		this.Platform = platform;
		this.WebDay = webDay;
		this.Story = story;
		this.WebFile = webFile;
		this.Address = address;
		this.State = state;
	}


	public WebtoonDTO(String webTitle, int view, String webWriter, String platform, String webFile, String state) {
		super();
		this.WebTitle = webTitle;
		this.View = view;
		this.WebWriter = webWriter;
		this.Platform = platform;
		this.WebFile = webFile;
		this.State = state;
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
	public int getView() {
		return View;
	}
	public void setView(int view) {
		View = view;
	}
	public String getWebWriter() {
		return WebWriter;
	}
	public void setWebWriter(String webWriter) {
		WebWriter = webWriter;
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
