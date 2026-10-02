package study2;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import study2.ajax.StudyAjaxIdCheck1Command;
import study2.ajax.StudyAjaxIdCheck2Command;
import study2.ajax.StudyAjaxIdCheck3Command;
import study2.dbtest.StudyDbtestDeleteCommand;
import study2.dbtest.StudyDbtestInputOkCommand;
import study2.dbtest.StudyDbtestListCommand;
import study2.dbtest.StudyDbtestSearchCommand;
import study2.dbtest.StudyDbtestUpdateCommand;
import study2.dbtest.StudyDbtestUpdateOkCommand;
import study2.password.StudyPasswordOkCommand;

@SuppressWarnings("serial")
@WebServlet("*.st")
public class StudyController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudyInterface command = null;
		
		String viewPage = "/WEB-INF/study2/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
		
		if(com.equals("ajax")) {
			viewPage += "ajax/ajaxForm";
		}
		else if(com.equals("ajaxIdCheck1")) {
			command = new StudyAjaxIdCheck1Command();
			command.execute(request, response);
			viewPage += "ajax/ajaxForm";
		}
		else if(com.equals("ajaxIdCheck2")) {
			command = new StudyAjaxIdCheck2Command();
			command.execute(request, response);
			return;
		}
		else if(com.equals("ajaxIdCheck3")) {
			command = new StudyAjaxIdCheck3Command();
			command.execute(request, response);
			return;
		}
		else if(com.equals("password")) {
			viewPage += "password/passwordForm";
		}
		else if(com.equals("passwordOk")) {
			command = new StudyPasswordOkCommand();
			command.execute(request, response);
			viewPage += "password/passwordForm";
		}
		else if(com.equals("dbtestForm")) {
			viewPage += "dbtest/dbtestForm";
		}
		else if(com.equals("dbtestInput")) {
			viewPage += "dbtest/dbtestInput";
		}
		else if(com.equals("dbtestInputOk")) {
			command = new StudyDbtestInputOkCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("dbtestSearch")) {
			command = new StudyDbtestSearchCommand();
			command.execute(request, response);
			viewPage += "dbtest/dbtestSearch";
		}
		else if(com.equals("dbtestList")) {
			command = new StudyDbtestListCommand();
			command.execute(request, response);
			viewPage += "dbtest/dbtestList";
		}
		else if(com.equals("dbtestUpdate")) {
			command = new StudyDbtestUpdateCommand();
			command.execute(request, response);
			viewPage += "dbtest/dbtestUpdate";
		}
		else if(com.equals("dbtestUpdateOk")) {
			command = new StudyDbtestUpdateOkCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("dbtestDelete")) {
			command = new StudyDbtestDeleteCommand();
			command.execute(request, response);
			return;
		}
		viewPage += ".jsp";
		request.getRequestDispatcher(viewPage).forward(request, response);
	}
	
}
