package kitri.search.vo;

public class SearchVO {
	String user_id;
	String search_word;
	String Search_date;
	
	public SearchVO(){
		
	}

	public SearchVO(String user_id, String search_word, String search_date) {
		super();
		this.user_id = user_id;
		this.search_word = search_word;
		Search_date = search_date;
	}

	@Override
	public String toString() {
		return "SearchVO [user_id=" + user_id + ", search_word=" + search_word
				+ ", Search_date=" + Search_date + "]";
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getSearch_word() {
		return search_word;
	}

	public void setSearch_word(String search_word) {
		this.search_word = search_word;
	}

	public String getSearch_date() {
		return Search_date;
	}

	public void setSearch_date(String search_date) {
		Search_date = search_date;
	}
	
	
}
