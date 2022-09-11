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
@Table(name = "web_Area")
public class AreaModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int area_id;
	@Column(length = 40)
	private String area_name;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="country_id")
	private CountryModel co;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="state_id")
	private StateModel st;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="city_id")
	private CityModel ci;
	
	
	public AreaModel() {
		super();
	}
	public AreaModel(int area_id) {
		super();
		this.area_id = area_id;
	}
	public void setArea_id(int area_id) {
		this.area_id = area_id;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	public void setCo(CountryModel co) {
		this.co = co;
	}
	public void setSt(StateModel st) {
		this.st = st;
	}
	public void setCi(CityModel ci) {
		this.ci = ci;
	}
	public int getArea_id() {
		return area_id;
	}
	public String getArea_name() {
		return area_name;
	}
	public CountryModel getCo() {
		return co;
	}
	public StateModel getSt() {
		return st;
	}
	public CityModel getCi() {
		return ci;
	}
	
	

}
