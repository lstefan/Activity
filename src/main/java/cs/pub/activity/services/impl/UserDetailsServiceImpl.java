package cs.pub.activity.services.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cs.pub.activity.model.User;
import cs.pub.activity.repositories.UserRepository;

/**
 * 
 * @author Livia Stefan
 *
 */
@Service("userDetailsService")
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

	private UserRepository userRepository;

	@Autowired
	public UserDetailsServiceImpl(UserRepository repository) {
		this.userRepository = repository;
	}

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		User user = userRepository.findByEmail(username);
		;

		if (user == null) {
			throw new UsernameNotFoundException(username);
		}

		SocialUserImpl principal = SocialUserImpl.getBuilder()
				.firstName(user.getFirstname()).id(user.getId())
				.lastName(user.getLastname()).password(user.getPassword())
				.role(user.getRole())
				.socialSignInProvider(user.getSignInProvider())
				.username(user.getEmail()).build();

		return principal;
	}

}
