package reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReservationInputOkCommand implements ReservationInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/imgDB");
		int maxSize = 1024 * 1024 * 10;
		String encoding = "UTF-8";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		String filesystemName = multipartRequest.getFilesystemName("fName"); //서버에 저장된 파일명
		
		int price = multipartRequest.getParameter("price") == null ? 0 : Integer.parseInt(multipartRequest.getParameter("price"));
		String title = multipartRequest.getParameter("title") == null ? "" :  multipartRequest.getParameter("title");
		String startDate = multipartRequest.getParameter("startDate") == null ? "" :  multipartRequest.getParameter("startDate");
		String endDate = multipartRequest.getParameter("endDate") == null ? "" :  multipartRequest.getParameter("endDate");
		String content = multipartRequest.getParameter("content") == null ? "" : multipartRequest.getParameter("content");
		
		ReservationInfoVO vo = new ReservationInfoVO();
		
		vo.setTitle(title);
		vo.setPrice(price);
		vo.setStartDate(startDate);
		vo.setEndDate(endDate);
		vo.setContent(content);
		vo.setPhoto(filesystemName);

		ReservationDAO dao = new ReservationDAO();
		int res = dao.setReservationInputOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "행사가 등록되었습니다.");
		}
		else {
			request.setAttribute("msg", "행사 등록을 실패하였습니다.");
		}
		request.setAttribute("url", request.getContextPath()+"/ReservationList.res");
	}
}
