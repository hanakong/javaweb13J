package member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.SecurityUtil;

public class MemberLoginOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String chk_id = request.getParameter("chk_id")==null ? "" : request.getParameter("chk_id");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberMidCheck(mid);
		
		if(vo.getSalt() == null || vo.getUserDel().equals("OK")) {
			request.setAttribute("msg", "회원정보가 존재하지 않습니다. \\n다시 확인해주세요.");
			request.setAttribute("url", request.getContextPath()+"/MemberLogin.mem");
			return;
		}
		
		String salt = vo.getSalt();
		pwd = salt + pwd;
		
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(pwd);
		
		if(!pwd.equals(vo.getPwd())) {
			request.setAttribute("msg", "비밀번호가 일치하지 않습니다.//n다시 한번 확인해주세요.");
			request.setAttribute("url", request.getContextPath()+"/MemberLogin.mem");
			return;
		}
		
		// 로그인 성공시에 처리할 내용들을 기술한다.(1.주요필드를 세션에 저장, 2.오늘방문횟수처리, 3. 총방문수와 방문포인트처리, 4.쿠키에 아이디저장유무)
		// 1.
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLevel", vo.getLevel());
		session.setAttribute("sLastDate", vo.getLastDate());
		
		Cookie cMid = new Cookie("cMid", mid);
		if(chk_id.equals("on")) {
			cMid.setMaxAge(60*60*24*7);
		}
		else {
			cMid.setMaxAge(0);
		}
		response.addCookie(cMid);
		
		request.setAttribute("msg", vo.getNickName() + "님 로그인 되었습니다.");
		request.setAttribute("url", request.getContextPath()+"/index.jsp");
	}

}
