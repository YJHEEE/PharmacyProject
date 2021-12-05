package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.commit;
import static carrot.common.jdbc.JDBCTemplate.getConnection;
import static carrot.common.jdbc.JDBCTemplate.rollback;

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
		dbookmarkDao = new DBookmarkDao(conn);
	}
	
	@Override
	protected void finalize() throws Throwable {
		close(conn);
	}
	
	public static List<DBookmark> dBookmarksAllSearch(){
		dbookmarkDao.setConn(conn);
		return dbookmarkDao.selectDBookmark();
	}
	
	public static void main(String[] args) {
		List<DBookmark> result = DBookmarkService.dBookmarksAllSearch();
		System.out.println(result);
	}
	
}
