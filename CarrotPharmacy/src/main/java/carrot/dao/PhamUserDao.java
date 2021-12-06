package carrot.dao;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import carrot.vo.PhamUser;

public class PhamUserDao {
	private Connection conn = null;
	private Properties prop = null;

	public PhamUserDao(Connection conn) {
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
	
	public List<PhamUser> selectPhamUser() {
		List<PhamUser> list = new ArrayList<PhamUser>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String query = prop.getProperty("selectPhamUser");

			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next() == true) {
				String phamId = rs.getString("pham_user_id");
				String phamNo = rs.getString("pham_no");
				String phamUserPw = rs.getString("pham_user_pw");

				PhamUser phamUser = new PhamUser(phamId, phamNo, phamUserPw);
				list.add(phamUser);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return list;
	}
	
}









