package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DBookmarkDao;
import carrot.vo.DBookmark;


public class DBookmarkService {
	private static DBookmarkDao dbookmarkDao = null;
	private static Connection conn = null;

	public DBookmarkService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		dbookmarkDao = new DBookmarkDao(conn, getDBProperties());
	}
	
	@Override
	protected void finalize() throws Throwable {
		close(conn);
	}
	
	public static List<DBookmark> dBookmarksAllSearch(String id, String pw){
		dbookmarkDao.setConn(conn);
		return dbookmarkDao.selectDBookmark(id, pw);
	}
}
