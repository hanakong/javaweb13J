package review;

public class ReviewVO {
	private int idx;
	private String mid;
	private String nickName; 
	private String content;
	private String hostIP;
	private String wDate;
	private String photoImg;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHostIP() {
		return hostIP;
	}
	public void setHostIP(String hostIP) {
		this.hostIP = hostIP;
	}
	public String getwDate() {
		return wDate;
	}
	public void setwDate(String wDate) {
		this.wDate = wDate;
	}
	public String getPhotoImg() {
		return photoImg;
	}
	public void setPhotoImg(String photoImg) {
		this.photoImg = photoImg;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [idx=" + idx + ", mid=" + mid + ", nickName=" + nickName + ", content=" + content + ", hostIP="
				+ hostIP + ", wDate=" + wDate + ", photoImg=" + photoImg + "]";
	}
}
