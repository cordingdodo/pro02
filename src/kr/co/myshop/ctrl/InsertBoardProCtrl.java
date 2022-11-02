package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;

@WebServlet("/InsertBoardProCtrl")
public class InsertBoardProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
	private final static String USER = "root";
	private final static String PASS = "a1234";
	int cnt=0;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		String sql ="";
		
		try {
			Class.forName(DRIVER);
			sql = "insert into notice(title, content, author) values(?, ?, ?)";
			Connection con = DriverManager.getConnection(URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, author);
			cnt=pstmt.executeUpdate();
			
			if(cnt>=1){
					response.sendRedirect("GetBoardListCtrl");
			} else {
					response.sendRedirect("GetBoardDetailCtrl");
				
			}
			pstmt.close();
			con.close();

		} catch(Exception e) {
			e.printStackTrace();
		
		}
		
	}
}
