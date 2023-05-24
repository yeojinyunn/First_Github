package org.zerock.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	
	@Select("SELECT sysdate FROM dual")
	public String getTime();
	
	//XML 형식으로 처리할 getTime2() 메소드를 선언함
	public String getTime2();
}
