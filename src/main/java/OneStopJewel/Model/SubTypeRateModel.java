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
@Table(name = "web__SubType_rate")
public class SubTypeRateModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int subtype_id;
	private String subtypename;
	private long subtyperate;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="tid")
	private TypeModel t;
	
	
	public SubTypeRateModel(int subtype_id) {
		super();
		this.subtype_id = subtype_id;
	}
	public SubTypeRateModel() {
		super();
	}
	public int getSubtype_id() {
		return subtype_id;
	}
	public void setSubtype_id(int subtype_id) {
		this.subtype_id = subtype_id;
	}
	public String getSubtypename() {
		return subtypename;
	}
	public void setSubtypename(String subtypename) {
		this.subtypename = subtypename;
	}
	public long getSubtyperate() {
		return subtyperate;
	}
	public void setSubtyperate(long subtyperate) {
		this.subtyperate = subtyperate;
	}
	public TypeModel getT() {
		return t;
	}
	public void setT(TypeModel t) {
		this.t = t;
	}
	
	
	
	
}
