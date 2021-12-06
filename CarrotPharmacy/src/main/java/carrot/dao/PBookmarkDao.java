package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import carrot.vo.PBookmark;

public class PBookmarkDao {
	private Connection conn = null;
	private Properties prop = null;

	public PBookmarkDao(Connection conn) {
		this.conn = conn;

		prop = new Properties();
		FileReader fr;
		try {
			fr = new FileReader("resources/carrot-query.properties");
			prop.load(fr);
			fr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public List<PBookmark> selectPbook() {
		List<PBookmark> list = new ArrayList<PBookmark>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String query = prop.getProperty("selectPBookmark");

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String phamNo = rs.getString("pham_no");
				String userId = rs.getString("user_id");
				String pbookScore = rs.getString("pbook_score");

				PBookmark pbookMark = new PBookmark(phamNo, userId, pbookScore);
				list.add(pbookMark);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return list;
	}
}
