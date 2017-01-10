package kitri.review.VO;

public class ReviewVO {
	public int revno;
	public int revgrade;
	public String revcomment;
	public String revdate;
	public String mem_id;
	public int revgood;
	public int revbad;
	public String prf_id;
	
	public ReviewVO(){
		
	}

	@Override
	public String toString() {
		return "ReviewDTO [revno=" + revno + ", revgrade=" + revgrade
				+ ", revcomment=" + revcomment + ", revdate=" + revdate
				+ ", mem_id=" + mem_id + ", revgood=" + revgood + ", revbad="
				+ revbad + ", prf_id=" + prf_id + "]";
	}

	public int getRevno() {
		return revno;
	}

	public void setRevno(int revno) {
		this.revno = revno;
	}

	public int getRevgrade() {
		return revgrade;
	}

	public void setRevgrade(int revgrade) {
		this.revgrade = revgrade;
	}

	public String getRevcomment() {
		return revcomment;
	}

	public void setRevcomment(String revcomment) {
		this.revcomment = revcomment;
	}

	public String getRevdate() {
		return revdate;
	}

	public void setRevdate(String revdate) {
		this.revdate = revdate;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getRevgood() {
		return revgood;
	}

	public void setRevgood(int revgood) {
		this.revgood = revgood;
	}

	public int getRevbad() {
		return revbad;
	}

	public void setRevbad(int revbad) {
		this.revbad = revbad;
	}

	public String getPrf_id() {
		return prf_id;
	}

	public void setPrf_id(String prf_id) {
		this.prf_id = prf_id;
	}

}