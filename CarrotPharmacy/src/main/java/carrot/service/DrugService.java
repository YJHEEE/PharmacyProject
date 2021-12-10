package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DrugDao;
import carrot.vo.Drug;

public class DrugService {
	private static DrugDao drugDao = null;
	private static Connection conn = null;

	public DrugService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		drugDao = new DrugDao(conn);
	}
	
	@Override
	protected void finalize() throws Throwable {
		close(conn);
	}
	
	public static List<Drug> selectDrugName(String searchDrugName){
		drugDao.setConn(conn);
		return drugDao.selectDrugName(searchDrugName);
	}
	
	public static List<Drug> selectDrugManu(String searchDrugManu){
		drugDao.setConn(conn);
		return drugDao.selectDrugName(searchDrugManu);
	}
	
//	public static void main(String[] args) {
//		DrugService ds = new DrugService();
//		System.out.println(ds.selectDrugName("레놀"));
//	}
}
