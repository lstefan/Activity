package cs.pub.activity.utils;

import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import cs.pub.activity.model.RoleEnum;
import cs.pub.activity.model.SocialMediaProvider;
import cs.pub.activity.validations.EmptyPassword;
import cs.pub.activity.validations.MatchPassword;

@EmptyPassword(triggerFieldName = "signInProvider", passwordFieldName = "password", passwordVerificationFieldName = "passwordVerification")
@MatchPassword(passwordFieldName = "password", passwordVerificationFieldName = "passwordVerification")
public class RegistrationForm {

	public static final String FIELD_NAME_EMAIL = "email";

	@Email
	@NotEmpty
	@Size(max = 100)
	private String email;

	@NotEmpty
	@Size(max = 100)
	private String firstName;

	@NotEmpty
	@Size(max = 100)
	private String lastName;

	private String password;

	private String passwordVerification;

	private SocialMediaProvider signInProvider;

	private RoleEnum role;

	public RegistrationForm() {

	}

	public String getEmail() {
		return email;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getPassword() {
		return password;
	}

	public String getPasswordVerification() {
		return passwordVerification;
	}

	public RoleEnum getRole() {
		return role;
	}

	public SocialMediaProvider getSignInProvider() {
		return signInProvider;
	}

	public boolean isNormalRegistration() {
		return signInProvider == null;
	}

	public boolean isSocialSignIn() {
		return signInProvider != null;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPasswordVerification(String passwordVerification) {
		this.passwordVerification = passwordVerification;
	}

	public void setRole(RoleEnum role) {
		this.role = role;
	}

	public void setSignInProvider(SocialMediaProvider signInProvider) {
		this.signInProvider = signInProvider;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this).append("email", email)
				.append("firstName", firstName).append("lastName", lastName)
				.append("signInProvider", signInProvider).toString();
	}
}
