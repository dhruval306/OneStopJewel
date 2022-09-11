package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_AssignRole")
public class AssignRoleModel implements Serializable {
	
	@Id
	@GeneratedValue
	private int Assignrole_id;
	
	

}
