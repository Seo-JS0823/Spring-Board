package com.board.menus.domain;

public class MenuDTO {
	private String menu_id;
	private String menu_name;
	private int menu_seq;
	
	public MenuDTO() {}
	
	public MenuDTO(String menu_id, String menu_name, int menu_seq) {
		this.menu_id = menu_id;
		this.menu_name = menu_name;
		this.menu_seq = menu_seq;
	}
	
	public String getMenu_id() {
		return this.menu_id;
	}

	public void setMenu_id(String menu_id) {
		this.menu_id = menu_id;
	}

	public String getMenu_name() {
		return this.menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public int getMenu_seq() {
		return this.menu_seq;
	}

	public void setMenu_seq(int menu_seq) {
		this.menu_seq = menu_seq;
	}

	@Override
	public String toString() {
		return "MenuDTO [menuid=" + this.menu_id + ", menuname=" + this.menu_name + ", menuseq=" + this.menu_seq + "]";
	}
	
}
