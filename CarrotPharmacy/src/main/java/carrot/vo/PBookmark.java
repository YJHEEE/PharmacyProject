package carrot.vo;

public class PBookmark {
	
	private String drugCode;
	private String userId;
	private String dbookScore;
	
	public PBookmark() {
		super();
	}
	
	public PBookmark(String drugCode, String userId, String dbookScore) {
		super();
		this.drugCode = drugCode;
		this.userId = userId;
		this.dbookScore = dbookScore;
	}

	public String getDrugCode() {
		return drugCode;
	}
	
	public void setDrugCode(String drugCode) {
		this.drugCode = drugCode;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getDbookScore() {
		return dbookScore;
	}
	
	public void setDbookScore(String dbookScore) {
		this.dbookScore = dbookScore;
	}

	@Override
	public String toString() {
		return "PBOOK_MARK [drugCode=" + drugCode + ", userId=" + userId + ", dbookScore=" + dbookScore + "]";
	}
}
