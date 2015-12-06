package cs.pub.activity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.data.jpa.domain.AbstractPersistable;

@Entity
@Table(name = "user")
public class User extends AbstractPersistable<Long> {
	
	private static final long serialVersionUID = -5430119865810405526L;
	
	@Column(name = "firstname", length = 45)
	private String firstname;

	@Column(name = "lastname", length = 45)
	private String lastname;

	@Column(name = "email", length = 45, unique = true)
	private String email;

	@Column(name = "password", unique = true, length = 255)
	private String password;

	@Enumerated(EnumType.STRING)
	@Column(name = "role", length = 20, nullable = false)
	private RoleEnum role;

	@Enumerated(EnumType.STRING)
	@Column(name = "sign_in_provider", length = 20)
	private SocialMediaProvider signInProvider;

	public static class Builder {

		private User user;

		public Builder() {
			user = new User();
			// user.role = RoleEnum.USER;
		}

		public User build() {
			return user;
		}

		public Builder email(String email) {
			user.email = email;
			return this;
		}

		public Builder firstName(String firstName) {
			user.firstname = firstName;
			return this;
		}

		public Builder lastName(String lastName) {
			user.lastname = lastName;
			return this;
		}

		public Builder password(String password) {
			user.password = password;
			return this;
		}

		public Builder role(RoleEnum role) {
			user.role = RoleEnum.USER;
			return this;
		}

		public Builder signInProvider(SocialMediaProvider signInProvider) {
			user.signInProvider = signInProvider;
			return this;
		}
	}


	public static Builder getBuilder() {
		return new Builder();
	}

	public String getEmail() {
		return email;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public String getPassword() {
		return password;
	}

	public RoleEnum getRole() {
		return role;
	}

	public SocialMediaProvider getSignInProvider() {
		return signInProvider;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	@Override
	public void setId(Long id) {
		super.setId(id);
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public void setPassword(String password) {
		this.password = password;
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
				.append("firstname", firstname).append("lastname", lastname)
				.append("signInProvider", this.getSignInProvider()).toString();
	}

}
