package javabean;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Post implements java.io.Serializable {

	private int id;
	private int userId;
	private String title;
	private String brandName;
	private String linkUrl;
	private String imgUrl;
	private String content;
	private Date startDate;
	private Date endDate;

	public Post() {}
	
	public Post(int id, int userId, String title, String brandName,
			String linkUrl, String imgUrl, String content,
			Date startDate, Date endDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.title = title;
		this.brandName = brandName;
		this.linkUrl = linkUrl;
		this.imgUrl = imgUrl;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
}