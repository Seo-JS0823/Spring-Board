package com.board.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class BoardDTO {
	private int idx;
	private String menu_id;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int hit;
}
