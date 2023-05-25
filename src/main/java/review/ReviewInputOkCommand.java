package review;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewInputOkCommand implements ReviewInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/imgDB");
		int maxSize = 1024 * 1024 * 10;
		String encoding = "UTF-8";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		String filesystemName = multipartRequest.getFilesystemName("fName"); //서버에 저장된 파일명
		
		HttpSession session = request.getSession();
		String mid = session.getAttribute("sMid")==null ? "" : (String) session.getAttribute("sMid");
		String nickName = session.getAttribute("sNickName")==null ? "" : (String) session.getAttribute("sNickName");
		String content = multipartRequest.getParameter("content") == null ? "" : multipartRequest.getParameter("content");
		String hostIP = multipartRequest.getParameter("hostIP")==null ? "" : multipartRequest.getParameter("hostIP");
		
		ReviewVO vo = new ReviewVO();
		vo.setMid(mid);
		vo.setNickName(nickName);
		vo.setContent(content);
		vo.setHostIP(hostIP);
		vo.setPhotoImg(filesystemName);
		
		ReviewDAO dao = new ReviewDAO();
		int res = dao.setReviewInputOk(vo);
		
	}
}
