package Controller;
import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BookMarkDAO;
import model.BookMarkDTO;



@WebServlet("/BookMarkService")
public class BookMarkService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("EUC-KR");
		String nick = request.getParameter("nick");
		String title = request.getParameter("title");
		String genre = request.getParameter("genre");
		String writter = request.getParameter("writter");
		String file = request.getParameter("file");
		System.out.println(nick);
		System.out.println(title);
		System.out.println(genre);
		System.out.println(writter);
		System.out.println(file);
		
		BookMarkDTO dto = new BookMarkDTO(nick, title, genre, writter, file);
		BookMarkDAO dao = new BookMarkDAO();
		int cnt = dao.InsertMark(dto);
		
		if(cnt>0) {
			System.out.println("북마크 추가 성공");
			HttpSession session = request.getSession();
			session.setAttribute("nick", nick);
		}else {
			System.out.println("북마크 추가 실패");
		}
		response.sendRedirect("BookMark.jsp");
	}

}
