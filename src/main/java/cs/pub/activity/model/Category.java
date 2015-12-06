package cs.pub.activity.model;

public enum Category {
	MOVIES("movies"),
	SPORTS("sports"),
	THEATRE("theatre"),
	CONCERTS("concerts"),
	WORKSHOPS("workshops"),
	EXPOSITIONS("expositions"),
	PARTIES("parties"),
	FAIRS("fairs");
	
	private String name;
	
	private Category(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}
