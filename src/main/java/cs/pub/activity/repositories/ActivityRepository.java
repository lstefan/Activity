package cs.pub.activity.repositories;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import cs.pub.activity.model.Activity;
import cs.pub.activity.model.Category;

public interface ActivityRepository extends PagingAndSortingRepository<Activity, Long> {
	public List<Activity> findByCategory(Category category);
	
	public List<Activity> findFirst8ByOrderByDateHappeningDesc();

}
