package cs.pub.activity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.AbstractPersistable;

@Entity
@Table(name = "user_rating")
public class UserRating extends AbstractPersistable<Long> {

	private static final long serialVersionUID = -3771065949767914322L;
	
	@Column(name="activity_id")
	private Activity activity;
	
	@Column(name="user_id")
	private User user;
	
	@Column
	private int rating;

	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public void setId(Long id) {
		super.setId(id);
	}	

}
