package carrot.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import carrot.vo.DBookmark;

public class DBookmarkDao {
	private Connection conn = null;
	private Properties prop = null;
	
	public DBookmarkDao(Connection conn) {
		this.conn = conn;
		
		prop = new Properties();
		FileReader fr;
		try {
			fr = new FileReader("carrot-query.properties");
			prop.load(fr);
			fr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	
	public List<DBookmark> selectDBookmark(){
		List<DBookmark> list = new ArrayList<DBookmark>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = prop.getProperty("SearchDBookmark");
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next() == true) {
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
				rs.close();
				pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
}
