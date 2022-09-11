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
@Table(name = "web_Type_Rate")
public class TyperateModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int typerate_id;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="type_id",unique = true)
	private TypeModel type;
	@Column
	private long type_rate;
	
	
	
	public TyperateModel() {
		super();
	}
	public TyperateModel(int typerate_id) {
		super();
		this.typerate_id = typerate_id;
	}
	public void setTyperate_id(int typerate_id) {
		this.typerate_id = typerate_id;
	}
	public void setType(TypeModel type) {
		this.type = type;
	}
	public int getTyperate_id() {
		return typerate_id;
	}
	public TypeModel getType() {
		return type;
	}
	public long getType_rate() {
		return type_rate;
	}
	public void setType_rate(long type_rate) {
		this.type_rate = type_rate;
	}
	
	
	

}
