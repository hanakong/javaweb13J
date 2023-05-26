package reservation;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReservationDeleteCommand implements ReservationInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException {
		
		int idx = request.getParameter("idx") == null ? 0 : Integer.parseInt(request.getParameter("idx"));
		
		ReservationDAO dao = new ReservationDAO();
		
		ReservationInfoVO vo = dao.getReservationSearch(idx);
		
		//파일 삭제
		String realPath = request.getServletContext().getRealPath("/images/imgDB/");
		File file = new File(realPath + vo.getPhoto());
		int res = 0;
		
		if(file.exists()) { 
			file.delete();
		}
		res = dao.setReservationDelete(idx);
		
//		메시지로 떨구세요
//		response.getWriter().write("res");
		
	}
}
