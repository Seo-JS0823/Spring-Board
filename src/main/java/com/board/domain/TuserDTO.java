package com.board.domain;

import java.sql.Date;
import java.util.Objects;

public class TuserDTO {
	private String userid;
	private String passwd;
	private String username;
	private String email;
	private int upoint;
	private Date indate;
	private String grade;
	
	public TuserDTO() {}
	
	public TuserDTO(String userid, String passwd, String username, String email, int upoint, Date indate) {
		this.userid = userid;
		this.passwd = passwd;
		this.username = username;
		this.email = email;
		this.upoint = upoint;
		this.indate = indate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		if(userid.isEmpty()) {
			throw new IllegalArgumentException();
		}
		
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		if(passwd.isEmpty()) {
			throw new IllegalArgumentException();
		}
		
		this.passwd = passwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		if(username.isEmpty()) {
			throw new IllegalArgumentException();
		}
		
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUpoint() {
		return String.format("%,d\nP",upoint);
	}

	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public String getGrade() {
		return this.grade;
	}
	
	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	@Override
	public String toString() {
		return "TuserDTO [userid=" + userid + ", passwd=" + passwd + ", username=" + username + ", email=" + email
				+ ", upoint=" + upoint + ", indate=" + indate + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(passwd, userid);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TuserDTO other = (TuserDTO) obj;
		return Objects.equals(passwd, other.passwd) && Objects.equals(userid, other.userid);
	}
	
	
	
}
