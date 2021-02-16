package com.kh.bungsu.shop.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Menu implements Serializable{

	private Integer menuNo;
	private String menuName;
	
	/**
	 * 1 팥붕
	 * 2 슈붕
	 * 3 계란빵
	 * 4 호떡
	 * 5 군밥
	 * 6 군고구마
	 * 7 토스트
	 * ...
	 * 
	 */
	
}
