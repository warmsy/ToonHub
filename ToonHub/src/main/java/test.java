import java.util.ArrayList;

import model.WebtoonDAO;
import model.WebtoonDTO;

public class test {

	public static void main(String[] args) {

		WebtoonDAO dao = new WebtoonDAO();		
		ArrayList<WebtoonDTO> monlist = dao.monday();
		
		for(int i =0; i<monlist.size(); i++) {
			System.out.println(monlist.get(i).getWebwriter());
		}
		
	}

}
