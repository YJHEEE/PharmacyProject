package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import carrot.dao.QnADao;
import carrot.vo.QnA;

public class QnAService {
	private static QnADao qndDao = null;
	private static Connection conn = null;

	public QnAService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		qndDao = new QnADao(conn);
	}
	
	@Override
	protected void finalize() throws Throwable {
		close(conn);
	}
	
	public static List<QnA> selectQnaQnum(String searchQnaQnum){
		qndDao.setConn(conn);
		return qndDao.selectQnaQnum(searchQnaQnum);
	}
	
	public static List<QnA> selectQnaPhamNo(String searchQnaPhamNo){
		qndDao.setConn(conn);
		return qndDao.selectQnaQnum(searchQnaPhamNo);
	}
	
	public static List<QnA> selectQnaQname(String searchQnaQname){
		qndDao.setConn(conn);
		return qndDao.selectQnaQnum(searchQnaQname);
	}
}
