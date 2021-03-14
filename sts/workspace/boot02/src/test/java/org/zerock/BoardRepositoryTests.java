package org.zerock;

import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.Board;
import org.zerock.persistence.BoardRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BoardRepositoryTests {
	
	@Autowired
	private BoardRepository  boardRepo;
	
	/*@Test
	public void testInsert() {
		Board board = new Board();
		board.setTitle("게시물의 제목");
		board.setContent("게시물 내용 넣기...");
		board.setWriter("user00");
		
		boardRepo.save(board);
	}*/
	
	/*@Test
	public void testRead() {
		boardRepo.findById(1L).ifPresent((board) -> {
			System.out.println(board);
		});
	}*/
	
	/*@Test
	public void testUpdate() {
		System.out.println("Read First......");
		Board board = boardRepo.findById(1L).get();
	
		board.setTitle("수정된 제목입니다...");
		boardRepo.save(board);
		//Board board = boardRepo.findOne(1L);
	}*/
	
	@Test
	public void testDelete() {
		System.out.println("Delete Entity");
		boardRepo.deleteById(1l);
	}
	
}
