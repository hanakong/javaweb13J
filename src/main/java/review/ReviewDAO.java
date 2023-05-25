package review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.GetConn;


public class ReviewDAO {
	
	GetConn getConn = GetConn.getInstance();
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	ReviewVO vo = null;

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
	
	
	
	
}
