package board;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardListCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageSize = request.getParameter("pageSize")==null || request.getParameter("pageSize").equals("") ? 10 : Integer.parseInt(request.getParameter("pageSize"));
		
		BoardDAO dao = new BoardDAO();
		
		List<BoardVO> vos = dao.getBoardList(pageSize);
		
		request.setAttribute("vos", vos);
	}

}
