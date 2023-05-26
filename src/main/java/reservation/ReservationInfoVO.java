package reservation;

public class ReservationInfoVO {
	private int idx;
	private int reservNum; //인원 합
	private int price;
	private String title;
	private String photo;
	private String startDate;
	private String endDate;
	private String content;
	private String progress;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getReservNum() {
		return reservNum;
	}
	public void setReservNum(int reservNum) {
		this.reservNum = reservNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	@Override
	public String toString() {
		return "ReservationInfoVO [idx=" + idx + ", reservNum=" + reservNum + ", price=" + price + ", title=" + title
				+ ", photo=" + photo + ", startDate=" + startDate + ", endDate=" + endDate + ", content=" + content
				+ ", progress=" + progress + "]";
	}
}
