package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.WebtoonDAO;
import model.WebtoonDTO;


@WebServlet("/ToonSearchService")
public class ToonSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String item = request.getParameter("item");
		String search = request.getParameter("search");
		
		if(item.equals("genre")) {
			item = search;
		}else if(item.equals("platform")){
			item = search;
		}else if(item.equals("wrriter")) {
			item = search;
		}
		
		System.out.println(item);
		System.out.println(search);
		WebtoonDAO dao = new WebtoonDAO();
		ArrayList<WebtoonDTO> result = dao.Search(item, search);
		
		if(result!=null) {
			System.out.println("검색에 성공했습니다.");
			HttpSession session = request.getSession();
			session.setAttribute("main_search", result);
		}else {
			System.out.println("검색에 실패했습니다.");
		}
		response.sendRedirect("Search_result.jsp?item="+item+"&search="+search);
	}

}
