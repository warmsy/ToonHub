package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardDTO;

@WebServlet("/ToonBoardWriteService")
public class ToonBoardWriteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String nick = request.getParameter("nick");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO(nick, title, content);
		int cnt = dao.Insert(dto);
		
		if (cnt>0) {
			System.out.println("게시글 등록 성공");
		}else {
			System.out.println("게시글 등록 실패");
		}
		response.sendRedirect("Board.jsp");
	}

}
