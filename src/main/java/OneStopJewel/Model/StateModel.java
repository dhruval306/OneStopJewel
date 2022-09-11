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
@Table(name = "web_State")
public class StateModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int state_id;
	@Column(length = 40)
	private String state_name;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="Country_id")
	private CountryModel country;
	
	
	
	
	public StateModel() {
		super();
	}
	public StateModel(int state_id) {
		super();
		this.state_id = state_id;
	}
	public void setState_id(int state_id) {
		this.state_id = state_id;
	}
	
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getState_name() {
		return state_name;
	}
	public void setCountry(CountryModel country) {
		this.country = country;
	}
	public int getState_id() {
		return state_id;
	}
	
	public CountryModel getCountry() {
		return country;
	}
	
	

}
