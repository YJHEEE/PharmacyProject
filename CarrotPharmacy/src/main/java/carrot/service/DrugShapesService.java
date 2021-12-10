package carrot.service;

import static carrot.common.jdbc.JDBCTemplate.close;
import static carrot.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import carrot.dao.DrugShapesDao;
import carrot.vo.DrugShapes;

public class DrugShapesService {
	private static DrugShapesDao drugShapesDao = null;
	private static Connection conn = null;

	public DrugShapesService() {
		init();
	}

	public void init() {
		if (conn != null) {
			close(conn);
		}
		conn = getConnection();
		drugShapesDao = new DrugShapesDao(conn);
	}
	
	@Override
	protected void finalize() throws Throwable {
		close(conn);
	}
	
	public static List<DrugShapes> selectDrugShape(String shpae){
		drugShapesDao.setConn(conn);
		return drugShapesDao.selectDrugShape(shpae);
	}
	
	public static List<DrugShapes> selectDrugColor(String color){
		drugShapesDao.setConn(conn);
		return drugShapesDao.selectDrugShape(color);
	}
}
