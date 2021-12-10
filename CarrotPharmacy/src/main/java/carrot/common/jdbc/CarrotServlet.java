package carrot.common.jdbc;

import java.net.http.HttpRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import carrot.vo.Users;

public abstract class CarrotServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private static final String SESSION_LOGIN_USER = "loginUser";
	
	public abstract String getServletName();
	
	public Users getUsersSession(HttpServletRequest req) {
		try {
			Users loginUser = (Users) req.getSession().getAttribute(SESSION_LOGIN_USER);
			if(loginUser != null) {
				return loginUser;
			}
		} catch (Exception e) {}
		return null;
	}
	
	public void setUsersSession(HttpServletRequest req, Users user) {
		 req.getSession().setAttribute(SESSION_LOGIN_USER, user);
	}
	
	public void printLog(String msg) {
		String date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date());
		System.out.println(getServletName() + "(" + date + ") : " + msg);
	}

}