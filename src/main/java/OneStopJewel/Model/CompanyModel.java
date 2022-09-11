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
@Table(name = "web_Company")
public class CompanyModel implements Serializable{
	

	@Id
	@GeneratedValue
	private int company_id;
	
	@Column(unique = true)
	private String company_name;
	
	@Column
	private String owner_name;
	
	@Column(unique = true)
	private String email;
	
	@Column
	private long mobile_no;
	
	@Column
	private long mobile_no_2;
	
	@Column(unique = true)
	private String website_name;
	
	@Column
	private String logo;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="country_id")
	private CountryModel co;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="state_id")
	private StateModel st;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="city_id")
	private CityModel ct;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="area_id")
	private AreaModel ar;
	
	@Column(length=100)
	private String address;
	
	@Column(unique = true)
	private long gst_number;
	
	@Column(unique = true)
	private long pan_card_number;
	
	@Column
	private String bank_name;
	
	@Column
	private long account_number;
	
	@Column
	private String branch_name;
	
	@Column
	private long IFSC_code;

	public CompanyModel() {
		super();
	}

	public CompanyModel(int company_id) {
		super();
		this.company_id = company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}


	public void setWebsite_name(String website_name) {
		this.website_name = website_name;
	}

	public void setLogo(String logo) {
		this.logo = logo;
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

	public void setAr(AreaModel ar) {
		this.ar = ar;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	public int getCompany_id() {
		return company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public String getOwner_name() {
		return owner_name;
	}

	public String getWebsite_name() {
		return website_name;
	}

	public String getLogo() {
		return logo;
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

	public AreaModel getAr() {
		return ar;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}

	public String getBank_name() {
		return bank_name;
	}

	public String getBranch_name() {
		return branch_name;
	}


	public String getAddress() {
		return address;
	}

	public long getMobile_no() {
		return mobile_no;
	}

	public long getMobile_no_2() {
		return mobile_no_2;
	}

	public long getGst_number() {
		return gst_number;
	}

	public long getPan_card_number() {
		return pan_card_number;
	}

	public long getAccount_number() {
		return account_number;
	}

	public long getIFSC_code() {
		return IFSC_code;
	}

	public void setMobile_no(long mobile_no) {
		this.mobile_no = mobile_no;
	}

	public void setMobile_no_2(long mobile_no_2) {
		this.mobile_no_2 = mobile_no_2;
	}

	public void setGst_number(long gst_number) {
		this.gst_number = gst_number;
	}

	public void setPan_card_number(long pan_card_number) {
		this.pan_card_number = pan_card_number;
	}

	public void setAccount_number(long account_number) {
		this.account_number = account_number;
	}

	public void setIFSC_code(long iFSC_code) {
		IFSC_code = iFSC_code;
	}

	

	

}
