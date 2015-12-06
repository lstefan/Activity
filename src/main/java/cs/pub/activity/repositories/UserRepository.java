package cs.pub.activity.repositories;

import org.springframework.data.repository.PagingAndSortingRepository;

import cs.pub.activity.model.User;

public interface UserRepository extends PagingAndSortingRepository<User, Long> {

	public User findByEmail(String email);

}
