package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.GetConn;

public class ReservationDAO {
	
	GetConn getConn = GetConn.getInstance();
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	ReservationInfoVO vo = null;

//	행사 저장
	public int setReservationInputOk(ReservationInfoVO vo) {
		int res = 0;
		try {
			sql = "insert into reservationInfo values(default,default,?,?,?,?,?,?,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getPrice());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getPhoto());
			pstmt.setString(4, vo.getStartDate());
			pstmt.setString(5, vo.getEndDate());
			pstmt.setString(6, vo.getContent());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("sql 오류 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		return res;
	}

	public ArrayList<ReservationInfoVO> getReservationList() {
		ArrayList<ReservationInfoVO> vos = new ArrayList<>();
		try {
			sql = "select * from reservationInfo order by idx";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ReservationInfoVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setReservNum(rs.getInt("reservNum"));
				vo.setPrice(rs.getInt("price"));
				vo.setTitle(rs.getString("title"));
				vo.setPhoto(rs.getString("photo"));
				vo.setStartDate(rs.getString("startDate"));
				vo.setEndDate(rs.getString("endDate"));
				vo.setContent(rs.getString("content"));
				vo.setProgress(rs.getString("progress"));
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("sql 오류 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vos;
	}

	public ReservationInfoVO getReservationSearch(int idx) {
		 try {
			 sql="select * from reservationInfo where idx = ?";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1, idx);
			 rs = pstmt.executeQuery();
			 
			 if(rs.next()) {
				 vo = new ReservationInfoVO();
				 vo.setIdx(rs.getInt("idx"));
				 vo.setReservNum(rs.getInt("reservNum"));
				 vo.setPrice(rs.getInt("price"));
				 vo.setTitle(rs.getString("title"));
				 vo.setPhoto(rs.getString("photo"));
				 vo.setStartDate(rs.getString("startDate"));
				 vo.setEndDate(rs.getString("endDate"));
				 vo.setContent(rs.getString("content"));
				 vo.setProgress(rs.getString("progress"));
			 }
		 	} catch (SQLException e) {
		 		System.out.println("sql 오류 : " + e.getMessage());
			} finally {
				getConn.rsClose();
			}
		return vo;
	}

	public int setReservationDelete(int idx) {
		int res = 0;
		try {
			sql = "delete from reservationInfo where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
	 		System.out.println("sql 오류 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		return res;
	}
	
	
	
}
