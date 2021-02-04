package com.kh.bungsu.shop.model.vo;

import java.io.Serializable;
import java.util.Date;

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
public class Shop implements Serializable {

	private int sNo;
	private String memberId;
	private String sTitle;
	private String sContent;
	private String[] sMenu;
	private Date sDate;
	private int repCount;
	private double lon;
	private double lat;
	private String addr;
	private String imgOriginalName;
	private String imgRenamedName;
	
}
