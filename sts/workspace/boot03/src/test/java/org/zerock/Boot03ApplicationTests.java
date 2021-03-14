package org.zerock;

import java.util.List;

import org.junit.jupiter.api.Test;
//import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.zerock.domain.Board;
import org.zerock.domain.QBoard;
import org.zerock.persistence.BoardRepository;

import com.querydsl.core.BooleanBuilder;

//@RunWith(SpringRunner.class)
@SpringBootTest
class Boot03ApplicationTests {
	
	@Autowired
	private BoardRepository repo;

	/*@Test
	public void testInsert200() {
		for(int i = 1; i<=200; i++) {
			Board board = new Board();
			board.setTitle("제목..." + i);
			board.setContent("sodyd..." + i + " 채우기 ");
			board.setWriter("user0" + (i %10));
			repo.save(board);
		}
	}*/
	
	@Test
	public void testByTitle2() {
		repo.findByTitle("17").forEach(board -> System.out.println(board));
	}
	/*@Test
	public void testByTile() {
		List<Board> list = repo.findBoardByTitle("제목... 177");
		for(int i = 0, len=list.size(); i<len; i++) {
			System.out.println(list.get(i));
		}		
	}
	
	@Test
	public void testBywriter() {
		Collection<Board> results = repo.findByWriter("user00");
		results.forEach(board -> System.out.println(board));
	}*/
	
	/*@Test
	public void testByWriterContaining() {
		Collection<Board> results = repo.findByWriterContaining("05");
		results.forEach(board -> System.out.println(board));
	}*/

	/*@Test
	public void testByTitleCOntainingOrContentContaining() {
		Collection<Board> results = repo.findByTitleContainingOrContentContaining("%5%","%5%");
		results.forEach(board -> System.out.println(board));
	}*/
	
	/*@Test
	public void testByTitleAndBno() {
		Collection<Board> results = repo.findByTitleContainingAndBnoGreaterThan("5", 50L);
		results.forEach(board -> System.out.println(board));
	}*/
	
	/*@Test
	public void testBnoOrderBy() {
		Collection<Board> results = repo.findByBnoGreaterThanOrderByBnoDesc(90L);
		results.forEach(board -> System.out.println(board));
	}*/
	
	/*@Test
	public void testBnoOrderByPagin() {
		Pageable paging = PageRequest.of(0, 10);
		Collection<Board> results = repo.findByBnoGreaterThanOrderByBnoDesc(0L,paging);
		results.forEach(board -> System.out.println(board));
	}*/
	
	/*@Test
	public void testBnoPagingSort() {
		Pageable paging = PageRequest.of(0, 10,Sort.Direction.ASC, "bno");
		
		Collection<Board> results = repo.findByBnoGreaterThan(0L,  paging);
		results.forEach(board-> System.out.println(board));
	}*/
	
	/*@Test
	public void testBnoPagingSort() {
		Pageable paging = PageRequest.of(0, 10,Sort.Direction.ASC, "bno");
		
		Page<Board> result = repo.findByBnoGreaterThan(0L,  paging);
		System.out.println("Page size : " + result.getSize());
		System.out.println("Total pages : " + result.getTotalPages());
		System.out.println("Total count : " + result.getTotalElements());
		System.out.println("Next : " + result.nextPageable());
		
		List<Board> list = result.getContent();
		list.forEach(board -> System.out.println(board));
	}*/
	
	/*@Test
	public void testByTitle2() {
		repo.findByTitle("17").forEach(board -> System.out.println(board));
	}*/

	/*@Test
	public void testByTitle17() {
		repo.findByTitle2("17").forEach(arr -> System.out.println(Arrays.toString(arr)));
	}*/
	
	/*@Test
	public void testByTitle17() {
		repo.findByTitle3("17").forEach(arr -> System.out.println(Arrays.toString(arr)));
	}*/
	
	/*@Test
	public void testByPaging() {
		Pageable pageable = PageRequest.of(0, 10);
		repo.findBypage(pageable).forEach(board -> System.out.println(board));
		
	}*/
	
	@Test
	public void testPredicate() {
		String type="t";
		String keyword = "17";
		
		BooleanBuilder builder = new BooleanBuilder();
		QBoard board = QBoard.board;
		
		if(type.equals("t")) {
			builder.and(board.title.like("%" + keyword + "%"));
		}
		
		builder.and(board.bno.gt(0L));
		
		Pageable pageable = PageRequest.of(0, 10);
		Page<Board> result = repo.findAll(builder, pageable);
		
		System.out.println("Page Size : " + result.getSize());
		System.out.println("Total Pages : " + result.getTotalPages());
		System.out.println("Total count : " + result.getTotalElements());
		System.out.println("Next : " + result.nextPageable());
		
		List<Board> list = result.getContent();
		list.forEach(b-> System.out.println(b));
	}
}
