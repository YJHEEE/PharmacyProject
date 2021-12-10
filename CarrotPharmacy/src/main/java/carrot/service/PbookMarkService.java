package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.PBookmarkDao;
import carrot.vo.PBookmark;

public class PbookMarkService {
	
	private PBookmarkDao pmd = null;
	private Connection conn = null;
	
	public PbookMarkService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		pmd = new PBookmarkDao(conn);
	}

	public List<PBookmark> selectAll(){
		pmd.setConn(conn);
		return pmd.selectPbook();
	}
	
}
