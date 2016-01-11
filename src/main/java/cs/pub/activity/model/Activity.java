package cs.pub.activity.model;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "activity")
public class Activity  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="activity_id", unique = true, nullable = false)
    private Long id;

	@Column(length = 100)
	private String title;
	
	@Column(length = 5000)
	private String description;
	
	@Column(length = 50)
	private String location;
	
	@Column
	private Timestamp dateHappening;
	
	@Column
	private Timestamp dateAdded;

	@Column
	@Enumerated(EnumType.STRING)
	private Category category;

	@Column
	private int avgRating;
	
	@Column
	private int roundedRating;
	
	@Column
	private String image;
	
    @OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
    @JoinColumn(name="id")
    private Set<UserRating> activityRatings;
	
	public Set<UserRating> getActivityRatings() {
		return activityRatings;
	}

	public void setActivityRatings(Set<UserRating> activityRatings) {
		this.activityRatings = activityRatings;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
/*    @ManyToMany(mappedBy="activitiesRated")
    private Set<User> usersThatRated = new HashSet<User>();*/
	
	
/*	@Column
	@Enumerated(EnumType.ORDINAL)
	private Rating rating;*/
	
/*	public Set<User> getUsersThatRated() {
		return usersThatRated;
	}

	public void setUsersThatRated(Set<User> usersThatRated) {
		this.usersThatRated = usersThatRated;
	}*/

	public int getAvgRating() {
		return avgRating;
	}

	public Category getCategory() {
		return category;
	}

	public Timestamp getDateHappening() {
		return dateHappening;
	}

	public String getDescription() {
		return description;
	}

	public String getImage() {
		return image;
	}

	public Timestamp getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Timestamp dateAdded) {
		this.dateAdded = dateAdded;
	}
	
	public String getLocation() {
		return location;
	}

	public int getRoundedRating() {
		return roundedRating;
	}

	public String getTitle() {
		return title;
	}

	public void setAvgRating(int avgRating) {
		this.avgRating = avgRating;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setDateHappening(Timestamp dateHappening) {
		this.dateHappening = dateHappening;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	public void setImage(String image) {
		this.image = image;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setRoundedRating(int roundedRating) {
		this.roundedRating = roundedRating;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
