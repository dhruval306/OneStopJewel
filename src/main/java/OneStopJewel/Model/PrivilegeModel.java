package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_Privilege")
public class PrivilegeModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int privilege_id;
	@Column(length = 40,unique = true)
	private String privilege;
	
	public PrivilegeModel() {
		super();
	}

	public PrivilegeModel(int privilege_id) {
		super();
		this.privilege_id = privilege_id;
	}

	public int getPrivilege_id() {
		return privilege_id;
	}

	public String getPrivilege() {
		return privilege;
	}

	public void setPrivilege_id(int privilege_id) {
		this.privilege_id = privilege_id;
	}

	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	
	
	

}
