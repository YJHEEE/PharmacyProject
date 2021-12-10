package carrot.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carrot.common.jdbc.CarrotServlet;
import carrot.service.UserService;
import carrot.vo.Users;

@WebServlet("/index.html")
public class MainIndexServlet extends CarrotServlet{
	private static final long serialVersionUID = 1L;
	
	private UserService service = new UserService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		printLog("로그인 됨");
		
		req.getRequestDispatcher("/views/main.jsp").forward(req, resp);
		
		Users user = service.fineUserId("users_khtest");
		setUsersSession(req, user);
		Users loginUser = getUsersSession(req);

		if(loginUser != null) {
			printLog(loginUser.toString());
		}
	}

	@Override
	public String getServletName() {
		return "MainIndexServlet";
	}

}