package cs.pub.activity.repositories;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.UserRating;

public interface UserRatingRepository extends PagingAndSortingRepository<UserRating, Long>{

	public List<UserRating> findByUserId(Long userId);
}
