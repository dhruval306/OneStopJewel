package OneStopJewel.Model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "web_sales_partyinfo")
public class SalesPartyInfoModel  implements Serializable{
	
	@Id
	@GeneratedValue
	private int salesparty_id;
	@Column(length = 40)
	private String party_name;
	@Column(length = 40)
	private long mobilenumber;
	@Column(length = 40)
	private long wpnumber;
	@Column(unique = true)
	private String email;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="country_id")
	private CountryModel co;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="state_id")
	private StateModel st;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="city_id")
	private CityModel ct;
	
	@Column(length = 40)
	private long pincode;
	@Column(length=100)
	private String address;
	@Column(length = 40)
	private String date;
	@Column(length = 40)
	private String type;
	@Column(length = 40)
	private String method;
	@Column(length = 40)
	private String gold;
	@Column(length = 40)
	private long gold_gm;
	@Column(length = 40)
	private String silver;
	@Column(length = 40)
	private long silver_gm;
	@Column(length = 40)
	private String cash;
	@Column(length = 40)
	private long rs;
	
	
	public SalesPartyInfoModel() {
		super();
	}
	public SalesPartyInfoModel(int salesparty_id) {
		super();
		this.salesparty_id = salesparty_id;
	}
	public int getSalesparty_id() {
		return salesparty_id;
	}
	public String getParty_name() {
		return party_name;
	}
	public long getMobilenumber() {
		return mobilenumber;
	}
	public long getWpnumber() {
		return wpnumber;
	}
	public String getEmail() {
		return email;
	}
	public CountryModel getCo() {
		return co;
	}
	public StateModel getSt() {
		return st;
	}
	public CityModel getCt() {
		return ct;
	}
	public long getPincode() {
		return pincode;
	}
	public String getAddress() {
		return address;
	}
	public String getDate() {
		return date;
	}
	public String getType() {
		return type;
	}
	public String getMethod() {
		return method;
	}
	public String getGold() {
		return gold;
	}
	public long getGold_gm() {
		return gold_gm;
	}
	public String getSilver() {
		return silver;
	}
	public long getSilver_gm() {
		return silver_gm;
	}
	public String getCash() {
		return cash;
	}
	public long getRs() {
		return rs;
	}
	public void setSalesparty_id(int salesparty_id) {
		this.salesparty_id = salesparty_id;
	}
	public void setParty_name(String party_name) {
		this.party_name = party_name;
	}
	public void setMobilenumber(long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public void setWpnumber(long wpnumber) {
		this.wpnumber = wpnumber;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setCo(CountryModel co) {
		this.co = co;
	}
	public void setSt(StateModel st) {
		this.st = st;
	}
	public void setCt(CityModel ct) {
		this.ct = ct;
	}
	public void setPincode(long pincode) {
		this.pincode = pincode;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public void setGold(String gold) {
		this.gold = gold;
	}
	public void setGold_gm(long gold_gm) {
		this.gold_gm = gold_gm;
	}
	public void setSilver(String silver) {
		this.silver = silver;
	}
	public void setSilver_gm(long silver_gm) {
		this.silver_gm = silver_gm;
	}
	public void setCash(String cash) {
		this.cash = cash;
	}
	public void setRs(long rs) {
		this.rs = rs;
	}
	
	
}
