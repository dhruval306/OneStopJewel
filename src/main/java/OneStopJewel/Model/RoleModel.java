package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_role__")
public class RoleModel implements Serializable{
	 
	@Id
	@GeneratedValue
	private int id;
	@Column(length = 40,unique = true)
	private String role;
	
	
	public RoleModel() {
		super();
	}
	public RoleModel(int id) {
		super();
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public String getRole() {
		return role;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setRole(String role) {
		this.role = role;
	} 
	

}
