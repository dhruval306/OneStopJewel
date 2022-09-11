package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_UserInfo")
public class UserModel implements Serializable {

	@Id
	@GeneratedValue
	private int user_id;
	
	@Column(nullable = false , unique = true)
	private String username;
	
	@Column( unique = true)
	private String password;
	
	@Column(nullable = false , length = 50)
	private String full_name;
	
	@Column(nullable = false )
	private long number;
	
	@Column(nullable = false , unique = true)
	private String email;
	
	@Column(nullable = false , length = 100)
	private String address;
	
	@Column(nullable = false )
	private String gender;
	
	@Column
	private String role;
	
	@Column
	private String image;

	public int getUser_id() {
		return user_id;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getFull_name() {
		return full_name;
	}

	public String getEmail() {
		return email;
	}

	public String getRole() {
		return role;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public long getNumber() {
		return number;
	}

	public String getAddress() {
		return address;
	}

	public String getGender() {
		return gender;
	}

	public String getImage() {
		return image;
	}

	public void setNumber(long number) {
		this.number = number;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
}
