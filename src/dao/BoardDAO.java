package dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import mybatis.SqlMapConfig;

public class BoardDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;

	
	public BoardDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean insertBoard(BoardBean board) {
		boolean result = false;
		
		if (sqlsession.insert("Board.insert", board) == 1) {
			result = true;
		}

		return result;
	}

	public List<BoardBean> getBoardList() {
		List<BoardBean> boardList = sqlsession.selectList("Board.getBoardList");
		
		return boardList;
	}
	
	public int getBoardCount() {
		int boardCount = sqlsession.selectOne("Board.getBoardCount");
		return boardCount;
		
	}
}
