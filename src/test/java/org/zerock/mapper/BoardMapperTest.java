package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

//@RunWith 어노테이션은 현재 테스트 코드가 스프링을 실행하는 역할을 할 것이이라는 것을 나타냅니다.
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration 어노테이션은 속성값의 문자열 설정으로 지정된 클래스나 문자열을 이용해서
//필요한 객체들을 스프링 내에 객체로 등록하게 됩니다(이것을 스프링의 빈으로 등록된다고 표현합니다)
//이때, SpringMVC 프로젝트 생성시 자동으로 생성된 root-context.xml 경로 지정을 할 수도 있으며,
//보통 문자열은 'classpath:'나 'file:'을 이용할 수 있습니다.
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//@Log4j 어노테이션은 Lombok을 이용해서 로그를 기록하는 Logger를 변수로 생성합니다.
//별도의 Logger 객체의 선언이 없이도 Log4j 라이브러리와 설정이 존재한다면 바로 사용이 가능합니다.
@Log4j
public class BoardMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(board -> log.info(board));
//	}
	
	
	
//	@Test
//	public void testInsert() {
//		BoardVO board = new BoardVO();
//		board.setTitle("첫번째 제목");
//		board.setContent("첫번째 내용");
//		board.setWriter("첫번째 작성자");
//		
//		mapper.insert(board);
//		
//		log.info(board);
//	}
	
//	@Test
//	public void testInsertSelectKey() {
//		BoardVO board = new BoardVO();
//		board.setTitle("두번째 제목");
//		board.setContent("두번째 내용");
//		board.setWriter("두번째 작성자");
//		
//		mapper.insertSelectKey(board);
//		
//		log.info(board);
//		
//	}
	
//	@Test
//	public void testRead() {
//		// 존재하는 게시물 번호로 테스트
//		//BoardVO board = mapper.read(9L);
//		BoardVO board = mapper.read(3L);
//		
//		log.info(board);
//		
//	}
	
//	@Test
//	public void testDelete() {
//		
//		
//		log.info("삭제된 데이터의 개수는 =" + mapper.delete(6L) + "개입니다");
//		
//	}
	
//	@Test
//	public void testUpdate() {
//		
//		BoardVO board = new BoardVO();
//		// testUpdate() 메소드에서 수정 처리 실행 전에 "존재하는 번호인지 확인"해 봅니다
//		board.setBno(4L);
//		board.setTitle("두번째로 수정한 제목");
//		board.setContent("두번째로 수정한 내용");
//		board.setWriter("세번째 수정 작성자");
//		
//		int count = mapper.update(board);
//		log.info("수정된 데이터의 개수는 " + count + "개입니다");
//	}
	
//	@Test
//	public void testPaging() {
//		Criteria cri = new Criteria();
//		
//		//10개씩 3페이지
//		cri.setPageNum(3);
//		cri.setAmount(10);
//		
//		List<BoardVO> list= mapper.getListWithPaging(cri);
//		list.forEach(board -> log.info(board));
//	}

	
//	@Test
//	public void testSearch() {
//		Criteria cri = new Criteria();
//		cri.setKeyword("봉미선");
//		cri.setType("TCW");
//		
//		List<BoardVO> list = mapper.getListWithPaging(cri);
//		list.forEach(board -> log.info(board));
//	}
}
