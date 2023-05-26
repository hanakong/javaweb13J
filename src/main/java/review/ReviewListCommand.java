package review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReviewListCommand implements ReviewInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException {
		ReviewDAO dao = new ReviewDAO();
		
		ArrayList<ReviewVO> vos = dao.getReviewList();
		
		request.setAttribute("vos", vos);
		
	}
}
