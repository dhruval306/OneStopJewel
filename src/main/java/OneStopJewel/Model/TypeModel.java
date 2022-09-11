package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_Type")
public class TypeModel implements Serializable {
	

	@Id
	@GeneratedValue
	private int type_id;
	@Column(length = 40)
	private String type_name;
	
	
	public TypeModel() {
		super();
	}
	public TypeModel(int type_id) {
		super();
		this.type_id = type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public int getType_id() {
		return type_id;
	}
	public String getType_name() {
		return type_name;
	}
	

}
