package cs.pub.activity.model;

public enum Rating {
	TERRIBLE("terrible"),
	POOR("poor"),
	AVERAGE("average"),
	GOOD("good"),
	EXCELLENT("excellent");
	
	private String name;
	
	private Rating(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}
