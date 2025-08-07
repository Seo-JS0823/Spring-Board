package com.board.menucontent.domain;

import java.sql.Date;

public class MenuContentDTO {
	private int rnum;
	private String menu_id;
	private String title;
	private String content;
	private Date postingdate;
	
	public MenuContentDTO() {}
	
	public MenuContentDTO(int rnum, String menu_id, String title, String content, Date postingdate) {
		this.rnum = rnum;
		this.menu_id = menu_id;
		this.title = title;
		this.content = content;
		this.postingdate = postingdate;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPostingdate() {
		return postingdate;
	}

	public void setPostingdate(Date postingdate) {
		this.postingdate = postingdate;
	}

	@Override
	public String toString() {
		return "MenuContentDTO [rnum=" + rnum + ", menu_id=" + menu_id + ", title=" + title + ", content=" + content
				+ ", postingdate=" + postingdate + "]";
	}
	
}
