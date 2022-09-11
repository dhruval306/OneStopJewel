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
@Table(name = "web_City")
public class CityModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int city_id;
	@Column(length = 40)
	private String city_name;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="country_id")
	private CountryModel co;
	
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="state_id")
	private StateModel st;
	
	
	public CityModel() {
		super();
	}
	public CityModel(int city_id) {
		super();
		this.city_id = city_id;
	}
	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public void setCo(CountryModel co) {
		this.co = co;
	}
	public void setSt(StateModel st) {
		this.st = st;
	}
	public int getCity_id() {
		return city_id;
	}
	public String getCity_name() {
		return city_name;
	}
	public CountryModel getCo() {
		return co;
	}
	public StateModel getSt() {
		return st;
	}
	
	

}
