package com.becoderCrudEntite;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.web.multipart.MultipartFile;

/*import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import jakarta.validation.constraints.Email;*/

@Entity
public class Emp {







	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	/*
	 * @NotNull(message = "Emp name cant,t black")
	 * 
	 * @Size(min=3 ,max= 50)
	 */

	private String Name;
	/*
	 * @NotNull(message = "plase give right address")
	 * 
	 * @Size(min=3 , max=90)
	 */

	private String Address;

	/*
	 * @NotNull
	 * 
	 * @Email(message = "please enter the correct email")
	 * 
	 * @Size(min =10,max=100)
	 */

	private String Email;
	/*
	 * @NotNull
	 * 
	 * @Size
	 */

	
	
	 private String imageBase64;
	public String getImageBase64() {
		return imageBase64;
	}

	public void setImageBase64(String imageBase64) {
		this.imageBase64 = imageBase64;
	}

	@Override
	public String toString() {
		return "Emp [id=" + id + ", Name=" + Name + ", Address=" + Address + ", Email=" + Email + ", Password="
				+ Password + ", Image=" + Arrays.toString(Image) + ", Role=" + Role + "]";
	}

	public Emp(String name, String address, String email, String password, byte[] image, String role) {
		super();
		Name = name;
		Address = address;
		Email = email;
		Password = password;
		Image = image;
		Role = role;
	}







	private String Password;
	@Lob
	private byte[] Image;

	public byte[] getImage() {
		return Image;
	}

	public void setImage(byte[] image2) {
		Image = image2;
	}
	private String Role;

	public int getId() {
		return id;
	}

	public String getRole() {
		return Role;
	}

	public void setRole(String role) {
		Role = role;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}
public Emp(int id, String name, String address, String email, String password, byte[] image, String role) {
		super();
		this.id = id;
		Name = name;
		Address = address;
		Email = email;
		Password = password;
		Image = image;
		Role = role;
	}

	public Emp() {
		super();
	}
}
