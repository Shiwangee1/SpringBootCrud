package com.becoderCrudEntite;

public class LoginData {
	private int id;
	private String username;

	private String email;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		email = email;
	}

	public LoginData() {
		super();
	} // TODO Auto-generated constructor stub }

	public LoginData(String username, String email) {
		super();
		username = username;
		email = email;
	}

	@Override
	public String toString() {
		return "LoginData [id=" + id + ", username=" + username + ", email=" + email + ", getUsername()="
				+ getUsername() + ", getEmail()=" + getEmail() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	

}
