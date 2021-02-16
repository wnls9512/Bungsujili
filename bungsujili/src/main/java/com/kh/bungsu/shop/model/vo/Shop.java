package com.kh.bungsu.shop.model.vo;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
//@Getter
//@Setter
@ToString
public class Shop implements Serializable {

	private int sNo;
	private String memberId;
	private String sTitle;
	private String sContent;
	private Date sDate;
	private int repCount;
	private double lon;
	private double lat;
	private String addr;
	private String imgOriginalName;
	private String imgRenamedName;
	private int[] sMenu;
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}
	public String getsContent() {
		return sContent;
	}
	public void setsContent(String sContent) {
		this.sContent = sContent;
	}
	public Date getsDate() {
		return sDate;
	}
	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}
	public int getRepCount() {
		return repCount;
	}
	public void setRepCount(int repCount) {
		this.repCount = repCount;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getImgOriginalName() {
		return imgOriginalName;
	}
	public void setImgOriginalName(String imgOriginalName) {
		this.imgOriginalName = imgOriginalName;
	}
	public String getImgRenamedName() {
		return imgRenamedName;
	}
	public void setImgRenamedName(String imgRenamedName) {
		this.imgRenamedName = imgRenamedName;
	}
	public int[] getsMenu() {
		return sMenu;
	}
	public void setsMenu(int[] sMenu) {
		this.sMenu = sMenu;
	}

	
}
