package org.zerock.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

// Critera = '검색의 기준' 의미함
@Getter
@Setter
@ToString
public class Criteria {
	
	private int pageNum; // 페이지 번호를 나타내는  pageNum 필드 선언
	private int amount; // 한 페이지당 보여주는 데이터의 수량을 나타내는  amount 필드 선언
	
	private String type; // 검색 조건을 나타내는 type 필드 선언
	private String keyword; // 검색 키워드를 나타내는 keyword 필드 선언
	
	// getTypeArr() 메소드는 검색 조건이 각 글자(T, W, C)로 구성되어 있으므로
	// 검색 조건을 배열로 만들어서 한번에 처리하기 위해 선언했습니다
	// getTypeArr() 메소드를 이용해서 MyBatis의 동적 태그를 활용합니다.
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
	
	public Criteria() {
	
		this(1,15);
		
		// this(1,7);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
//	public String getListLink() {
//		UriComponentsBuilder builder = UriComponentsBuilder.formPath("").queryParam("pageNum", this.pageNum).
//		
//		return keyword;
//	}
}
