package kitri.performinfo.boxweekly.dto;

public class BoxWeeklyDTO {
	private String area;
	private String prfcount;
	private String nmrs;
	private String prfperiod;
	private String genre;
	private String prfplcnm;
	private String prfnm;
	private String rank;
	private String seatcnt;
	private String poster;
	private String prfid;
	public BoxWeeklyDTO(){
		
	}
	public BoxWeeklyDTO(String area, String prfcount, String nmrs,
			String prfperiod, String genre, String prfplcnm, String prfnm,
			String rank, String seatcnt, String poster, String prfid) {
		super();
		this.area = area;
		this.prfcount = prfcount;
		this.nmrs = nmrs;
		this.prfperiod = prfperiod;
		this.genre = genre;
		this.prfplcnm = prfplcnm;
		this.prfnm = prfnm;
		this.rank = rank;
		this.seatcnt = seatcnt;
		this.poster = poster;
		this.prfid = prfid;
	}
	@Override
	public String toString() {
		return "BoxWeeklyDTO [area=" + area + ", prfcount=" + prfcount
				+ ", nmrs=" + nmrs + ", prfperiod=" + prfperiod + ", genre="
				+ genre + ", prfplcnm=" + prfplcnm + ", prfnm=" + prfnm
				+ ", rank=" + rank + ", seatcnt=" + seatcnt + ", poster="
				+ poster + ", prfid=" + prfid + "]";
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPrfcount() {
		return prfcount;
	}
	public void setPrfcount(String prfcount) {
		this.prfcount = prfcount;
	}
	public String getNmrs() {
		return nmrs;
	}
	public void setNmrs(String nmrs) {
		this.nmrs = nmrs;
	}
	public String getPrfperiod() {
		return prfperiod;
	}
	public void setPrfperiod(String prfperiod) {
		this.prfperiod = prfperiod;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getPrfplcnm() {
		return prfplcnm;
	}
	public void setPrfplcnm(String prfplcnm) {
		this.prfplcnm = prfplcnm;
	}
	public String getPrfnm() {
		return prfnm;
	}
	public void setPrfnm(String prfnm) {
		this.prfnm = prfnm;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getSeatcnt() {
		return seatcnt;
	}
	public void setSeatcnt(String seatcnt) {
		this.seatcnt = seatcnt;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getPrfid() {
		return prfid;
	}
	public void setPrfid(String prfid) {
		this.prfid = prfid;
	}
	
}
