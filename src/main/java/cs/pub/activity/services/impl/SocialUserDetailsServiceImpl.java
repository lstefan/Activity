package cs.pub.activity.services.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.social.security.SocialUserDetails;
import org.springframework.social.security.SocialUserDetailsService;
import org.springframework.stereotype.Service;

/**
 * 
 * @author Livia Stefan
 *
 */
@Service("socialUserDetailsService")
@Transactional
public class SocialUserDetailsServiceImpl implements SocialUserDetailsService {

	private UserDetailsService userDetailsService;

	@Autowired
	public SocialUserDetailsServiceImpl(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}

	@Override
	public SocialUserDetails loadUserByUserId(String userId)
			throws UsernameNotFoundException, DataAccessException {
		UserDetails userDetails = userDetailsService.loadUserByUsername(userId);

		return (SocialUserDetails) userDetails;
	}

}
