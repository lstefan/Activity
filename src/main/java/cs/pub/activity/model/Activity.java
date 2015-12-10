package cs.pub.activity.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.AbstractPersistable;

@Entity
@Table(name = "activity")
public class Activity extends AbstractPersistable<Long> {

	private static final long serialVersionUID = 1973224700290835934L;

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
	
/*	@Column
	@Enumerated(EnumType.ORDINAL)
	private Rating rating;*/
	
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
	
	@Override
	public void setId(Long id) {
		super.setId(id);
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
