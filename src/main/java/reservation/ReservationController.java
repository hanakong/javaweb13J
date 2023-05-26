package reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import review.ReviewDeleteCommand;
import review.ReviewInputOkCommand;

@SuppressWarnings("serial")
@WebServlet("*.res")
public class ReservationController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReservationInterface command = null;
		String viewPage = "/WEB-INF/reservation";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		
		HttpSession session = request.getSession();
		int level = session.getAttribute("sLevel") == null ? 99 : (int)session.getAttribute("sLevel");
		
		if(level > 2) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/");
			dispatcher.forward(request, response);
		}
		else if(com.equals("/ReservationList")) {
			command = new ReservationListCommand();
			command.execute(request, response);
			viewPage += "/reservationList.jsp";
		}
		else if(com.equals("/ReservationInput")) {
			viewPage += "/reservationInput.jsp";
		}
		else if(com.equals("/ReservationInputOk")) {
			command = new ReservationInputOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/ReviewDelete")) {
			command = new ReservationDeleteCommand();
			command.execute(request, response);
			return;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
