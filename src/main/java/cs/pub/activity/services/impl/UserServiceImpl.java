package cs.pub.activity.services.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import cs.pub.activity.exceptions.DuplicateEmailException;
import cs.pub.activity.model.User;
import cs.pub.activity.repositories.UserRepository;
import cs.pub.activity.services.UserService;
import cs.pub.activity.utils.RegistrationForm;

@Service
public class UserServiceImpl implements UserService {

	private PasswordEncoder passwordEncoder;

	private UserRepository userRepository;

	@Autowired
	public UserServiceImpl(PasswordEncoder passwordEncoder,
			UserRepository repository) {
		this.passwordEncoder = passwordEncoder;
		this.userRepository = repository;
	}

	@Transactional
	public User registerNewUserAccount(RegistrationForm userAccountData)
			throws DuplicateEmailException {
		if (emailExist(userAccountData.getEmail())) {
			throw new DuplicateEmailException("The email address: "
					+ userAccountData.getEmail() + " is already in use.");
		}

		String encodedPassword = encodePassword(userAccountData);

		User.Builder user = User.getBuilder().email(userAccountData.getEmail())
				.firstName(userAccountData.getFirstName())
				.lastName(userAccountData.getLastName())
				.role(userAccountData.getRole()).password(encodedPassword);

		if (userAccountData.isSocialSignIn()) {
			user.signInProvider(userAccountData.getSignInProvider());
		}

		User registered = user.build();

		return userRepository.save(registered);
	}

	private boolean emailExist(String email) {
		User user = userRepository.findByEmail(email);

		if (user != null) {
			return true;
		}

		return false;
	}

	private String encodePassword(RegistrationForm dto) {
		String encodedPassword = null;

		if (dto.isNormalRegistration()) {
			encodedPassword = passwordEncoder.encode(dto.getPassword());
		}

		return encodedPassword;
	}

	public User getLoggedInUser() {
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		SocialUserImpl userDetails = (SocialUserImpl) authentication
				.getPrincipal();
		return userRepository.findOne(userDetails.getId());
	}

	public User saveUser(User user) {
		return userRepository.save(user);
	}

}
