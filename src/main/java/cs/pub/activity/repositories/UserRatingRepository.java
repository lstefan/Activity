package cs.pub.activity.repositories;

import org.springframework.data.repository.PagingAndSortingRepository;

import cs.pub.activity.model.UserRating;

public interface UserRatingRepository extends PagingAndSortingRepository<UserRating, Long>{

}
