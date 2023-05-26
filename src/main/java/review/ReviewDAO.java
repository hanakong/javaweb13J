package review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.GetConn;


public class ReviewDAO {
	
	GetConn getConn = GetConn.getInstance();
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	ReviewVO vo = null;

	//리뷰 저장
	public int setReviewInputOk(ReviewVO vo) {
		int res = 0;
		try {
			sql = "insert into review values(default,?,?,?,?,default,?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getNickName());
			pstmt.setString(3, vo.getContent());
			pstmt.setString(4, vo.getHostIP());
			pstmt.setString(5, vo.getPhotoImg());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			 System.out.println("SQL 오류 : " + e.getMessage());
		}finally {
			getConn.rsClose();
		}
		
		return res;
	}
	
	// 리뷰 전체 조회
	public ArrayList<ReviewVO> getReviewList() {
		ArrayList<ReviewVO> vos = new ArrayList<>();
		try {
			//페이징 처리는 나중에 스프링 가서 하겠습니다...
			sql = "select * from review order by idx desc limit 0,4";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ReviewVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setNickName(rs.getString("nickName"));
				vo.setContent(rs.getString("content"));
				vo.setHostIP(rs.getString("hostIP"));
				vo.setwDate(rs.getString("wDate"));
				vo.setPhotoImg(rs.getString("photoImg"));
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vos;
	}
	
	//리뷰 삭제
	public int setReviewDelete(int idx) {
		int res = 0;
		try {
			sql = "delete from review where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		return res;
	}
	
	//리뷰 하나 가져오기
	public ReviewVO getReviewIdxSearch(int idx) {
		try {
			sql = "select * from review where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new ReviewVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setNickName(rs.getString("nickName"));
				vo.setContent(rs.getString("content"));
				vo.setHostIP(rs.getString("hostIP"));
				vo.setwDate(rs.getString("wDate"));
				vo.setPhotoImg(rs.getString("photoImg"));
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vo;
	}
}
