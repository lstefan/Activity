package cs.pub.activity.services;

import cs.pub.activity.exceptions.DuplicateEmailException;
import cs.pub.activity.model.User;
import cs.pub.activity.utils.RegistrationForm;

public interface UserService {

	public User registerNewUserAccount(RegistrationForm userAccountData)
			throws DuplicateEmailException;

	public User saveUser(User user);

	public User getLoggedInUser();
	
}
