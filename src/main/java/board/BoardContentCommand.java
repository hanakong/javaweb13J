package board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardContentCommand implements BoardInterface {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		int pag = request.getParameter("pag")==null ? 0 : Integer.parseInt(request.getParameter("pag"));
		int pageSize = request.getParameter("pageSize")==null ? 0 : Integer.parseInt(request.getParameter("pageSize"));
		String search = request.getParameter("search")==null ? "" : request.getParameter("search");
		String searchString = request.getParameter("searchString")==null ? "" : request.getParameter("searchString");
		
		BoardDAO dao = new BoardDAO();
		
		// 글 조회수 1회 증가시키기(조회수 중복방지처리 - 세션사용 : "'board'+고유번호" 값을 객체배열(ArrayList)에 추가시킨다.)
		HttpSession session = request.getSession();
		ArrayList<String> contentIdx = (ArrayList) session.getAttribute("sContentIdx");
		if(contentIdx == null) {
			contentIdx = new ArrayList<String>();
		}
		String imsiContentIdx = "board" + idx;
		if(!contentIdx.contains(imsiContentIdx)) {
			dao.setReadNumUpdate(idx);
			contentIdx.add(imsiContentIdx);
		}
		session.setAttribute("sContentIdx", contentIdx);
		
		// 현재 선택된 게시글(idx)의 전체내용물을 가져오기
		BoardVO vo = dao.getBoardContent(idx);
		
		request.setAttribute("vo", vo);
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("search", search);
		request.setAttribute("searchString", searchString);
		
		// 현재 부모글에 딸려있는 댓글 가져오기.
		ArrayList<BoardReplyVO> replyVOS = dao.getBoardReply(idx);
		request.setAttribute("replyVOS", replyVOS);
	}
}
