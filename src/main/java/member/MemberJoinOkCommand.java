package member;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.SecurityUtil;

public class MemberJoinOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 나머지 값들을 모두 request객체를 통해서 받아온다.
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String nickName = request.getParameter("nickName")==null ? "" : request.getParameter("nickName");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String tel = request.getParameter("tel")==null ? "" : request.getParameter("tel");
		
		//System.out.println("m : p : n : n : tel : " + mid + "," + pwd + "," + nickName + "," + name + "," + tel);
		
		
//		 Back End 체크.....(DB에 저장되는 자료들의 Null값과 길이체크.... 또, 중복여부(아이디,닉네임)체크)
		
//		// 아이디와 닉네임 중복체크...
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getMemberMidCheck(mid);
		if(vo.getMid() != null) {
			request.setAttribute("msg", "이미 사용중인 아이디입니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberJoin.mem");
			return;
		}
		
		vo = dao.getMemberMidCheck(nickName);
		if(vo.getNickName() != null) {
			request.setAttribute("msg", "이미 사용중인 닉네임입니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberJoin.mem");
			return;
		}
		
		// 비밀번호 암호화처리(sha256)
		UUID uid = UUID.randomUUID();
		String salt = uid.toString().substring(0,8);
		pwd = salt + pwd;
		
		SecurityUtil security = new SecurityUtil();
		pwd = security.encryptSHA256(pwd);
		
//		 모든 체크가 완료되었다면 회원정보를 vo에 담아서 DB(DAO객체)로 넘겨준다.
		vo = new MemberVO();
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setNickName(nickName);
		vo.setName(name);
		vo.setTel(tel);
		vo.setSalt(salt);
		
		int res = dao.setMemberJoinOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "회원가입이 완료되었습니다. \\n로그인 후 이용 부탁드립니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberLogin.mem");
		}
		else {
			request.setAttribute("msg", "회원가입에 실패하였습니다. \\n다시 시도하여주시길 바랍니다.");
			request.setAttribute("url", request.getContextPath()+"/MemberJoin.mem");
		}
	}

}
