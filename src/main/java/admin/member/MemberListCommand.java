package admin.member;

import java.io.IOException;
import java.util.List;

import admin.AdminInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import member.MemberDAO;
import member.MemberVO;

public class MemberListCommand implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		
		List<MemberVO> vos = dao.getMemberList();
		
		request.setAttribute("vos", vos);

	}

}
