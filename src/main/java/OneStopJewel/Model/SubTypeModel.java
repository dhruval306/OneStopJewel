package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "web__Sub__Type")
public class SubTypeModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int Subtype_id;
	@Column(length = 40,unique=true)
	private String Subtype_name;
	@Column
	private int type_id;
	
	
	
	public SubTypeModel(int subtype_id) {
		super();
		Subtype_id = subtype_id;
	}

	public SubTypeModel() {
		super();
	}
	public void setSubtype_id(int subtype_id) {
		Subtype_id = subtype_id;
	}
	public void setSubtype_name(String subtype_name) {
		Subtype_name = subtype_name;
	}
	
	public int getSubtype_id() {
		return Subtype_id;
	}
	public String getSubtype_name() {
		return Subtype_name;
	}

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	
	
	
	
	
	
}
