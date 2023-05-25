package review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("*.rev")
public class ReviewController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReviewInterface command = null;
		String viewPage = "/WEB-INF/review";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel") == null ? 99 : (int)session.getAttribute("sLevel");
		
		if(com.equals("/ReviewList")) {
			command = new ReviewListCommand();
			command.execute(request, response);
			viewPage += "/reviewList.jsp";
		}
		else if(com.equals("/ReviewInput")) {
			viewPage += "/reviewInput.jsp";
		}
		else if(com.equals("/ReviewInputOk")) {
			command = new ReviewInputOkCommand();
			command.execute(request, response);
			viewPage += "/reviewInput.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
