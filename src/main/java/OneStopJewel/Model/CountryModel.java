package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_Country")
public class CountryModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int Country_id;
	@Column(length = 40,unique = true)
	private String Country_name;
	@Column
	private int Country_code;
	
	public CountryModel(int country_id) {
		super();
		Country_id = country_id;
	}
	public CountryModel() {
		super();
	}
	public int getCountry_id() {
		return Country_id;
	}
	public String getCountry_name() {
		return Country_name;
	}
	public int getCountry_code() {
		return Country_code;
	}
	public void setCountry_id(int country_id) {
		Country_id = country_id;
	}
	public void setCountry_name(String country_name) {
		Country_name = country_name;
	}
	public void setCountry_code(int country_code) {
		Country_code = country_code;
	}
	

}
