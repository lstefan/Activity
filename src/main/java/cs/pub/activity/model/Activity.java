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
	
	@Column(length = 1000)
	private String description;
	
	@Column(length = 50)
	private String location;
	
	@Column
	private Timestamp dateHappening;
	
	@Column
	@Enumerated(EnumType.STRING)
	private Category category;

	@Column
	private int avgRating;
	
	@Column
	private int roundedRating;
	
/*	@Column
	@Enumerated(EnumType.ORDINAL)
	private Rating rating;*/
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Timestamp getDateHappening() {
		return dateHappening;
	}

	public void setDateHappening(Timestamp dateHappening) {
		this.dateHappening = dateHappening;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	public int getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(int avgRating) {
		this.avgRating = avgRating;
	}

	public int getRoundedRating() {
		return roundedRating;
	}

	public void setRoundedRating(int roundedRating) {
		this.roundedRating = roundedRating;
	}

	@Override
	public void setId(Long id) {
		super.setId(id);
	}
}
