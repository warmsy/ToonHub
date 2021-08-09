package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ToonMemberDAO;
import model.ToonMemberDTO;

@WebServlet("/ToonJoinService")
public class ToonJoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String nick = request.getParameter("nick");
		String pw = request.getParameter("password");
		
		ToonMemberDTO dto = new ToonMemberDTO(id, nick, pw);
		
		ToonMemberDAO dao = new ToonMemberDAO(); 
		
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("join successed");
			// 임시로 일단 메인으로 보내두기
			// 회원가입 성공알림창 만들거 아님 일단 보류해두자
			response.sendRedirect("ToonMain.jsp");
		}
		
		else {
			System.out.println("회원가입 실패");
			response.sendRedirect("ToonMain.jsp");
		}
		
		
	}

}
