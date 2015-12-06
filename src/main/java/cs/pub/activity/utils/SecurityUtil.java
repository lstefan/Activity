package cs.pub.activity.utils;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import cs.pub.activity.model.User;
import cs.pub.activity.services.impl.SocialUserImpl;

public class SecurityUtil {

	public static void logInUser(User user) {

		SocialUserImpl userDetails = SocialUserImpl.getBuilder()
				.firstName(user.getFirstname()).id(user.getId())
				.lastName(user.getLastname()).password(user.getPassword())
				.socialSignInProvider(user.getSignInProvider())
				.username(user.getEmail()).build();

		Authentication authentication = new UsernamePasswordAuthenticationToken(
				userDetails, null, userDetails.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(authentication);

	}
}
