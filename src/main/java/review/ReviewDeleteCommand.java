package review;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReviewDeleteCommand implements ReviewInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idx = request.getParameter("idx") == null ? 0 : Integer.parseInt(request.getParameter("idx"));
		
		ReviewDAO dao = new ReviewDAO();
		
		ReviewVO vo = dao.getReviewIdxSearch(idx);
		
		String realPath = request.getServletContext().getRealPath("/images/imgDB/");
		File file = new File(realPath + vo.getPhotoImg());
		int res = 0;
		
		if(file.exists()) { 
			file.delete();
		}
		res = dao.setReviewDelete(idx);
		
		response.getWriter().write("res");
	}
}
