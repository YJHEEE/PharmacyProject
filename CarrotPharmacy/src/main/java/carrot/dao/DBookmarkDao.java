package carrot.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static carrot.common.jdbc.JDBCTemplate.*;
import carrot.vo.DBookmark;

public class DBookmarkDao {
	private Connection conn = null;
	private static Properties prop = null;

	public DBookmarkDao(Connection conn, Properties prop) {
		this.conn = conn;
		this.prop = prop;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public List<DBookmark> selectDBookmark(String id, String pw) {
		List<DBookmark> list = new ArrayList<DBookmark>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = prop.getProperty("selectDBookmark");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String drugCode = rs.getString("DRUG_CODE");
				String userId = rs.getString("USER_ID");
				String dbookScore = rs.getString("DBOOK_SCORE");

				DBookmark dBookmark = new DBookmark(drugCode, userId, dbookScore);
				list.add(dBookmark);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			try {
				close(rs);
				close(pstmt);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

/*	public static void main(String[] args) {
		Connection connection = getConnection();
		DBookmarkDao dBookmarkDao = new DBookmarkDao(connection);

		List<DBookmark> test = dBookmarkDao.selectDBookmark("users_khtest", "0000");
		System.out.println(test);
//		try {
//			Connection connection = getConnection();
//			DBookmarkDao dBookmarkDao = new DBookmarkDao(connection);
//			
//			List<DBookmark> test = dBookmarkDao.selectDBookmark("users_khtest", "0000");
//			System.out.println(test);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}*/
}
