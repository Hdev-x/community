package com.gguek.app.community;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class CommunityDTO {
	
	private Integer commNo;
	private String commTitle;
	private String commName;
	private String commContents;
	private Date commTime;
	private Integer commStar;
}
