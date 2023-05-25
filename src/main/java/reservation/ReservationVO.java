package reservation;

public class ReservationVO {
	
	//reservation
	private int idx;
	private int reservInfoIdx;
	private String mid;
	private int reservNum;
	private String reservDate;
	private String rcDate;
	private String reservFlag;
	
	//reservationInfo
	private String title;
	private String content;
	private String startDate;
	private String endDate;
	private String photo;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getReservInfoIdx() {
		return reservInfoIdx;
	}
	public void setReservInfoIdx(int reservInfoIdx) {
		this.reservInfoIdx = reservInfoIdx;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getReservNum() {
		return reservNum;
	}
	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}
	public String getReservDate() {
		return reservDate;
	}
	public void setReservDate(String reservDate) {
		this.reservDate = reservDate;
	}
	public String getRcDate() {
		return rcDate;
	}
	public void setRcDate(String rcDate) {
		this.rcDate = rcDate;
	}
	public String getReservFlag() {
		return reservFlag;
	}
	public void setReservFlag(String reservFlag) {
		this.reservFlag = reservFlag;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "ReservationVO [idx=" + idx + ", reservInfoIdx=" + reservInfoIdx + ", mid=" + mid + ", reservNum="
				+ reservNum + ", reservDate=" + reservDate + ", rcDate=" + rcDate + ", reservFlag=" + reservFlag + ", title="
				+ title + ", content=" + content + ", startDate=" + startDate + ", endDate=" + endDate + ", photo=" + photo
				+ "]";
	}
}
