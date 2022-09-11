package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name = "web_employee")
public class EmployeeModel implements Serializable
{
	@Id
	@GeneratedValue
	private int emp_id;
	private String emp_fullname;
	private String emp_fathername;
	private String emp_mothername;
	private String emp_password;
	private String emp_role;
	private String emp_email;
	private long emp_phoneno1;
	private long emp_phoneno2;
	private String emp_dob;
	private String emp_bloodgroup;
	private String emp_gender;
	private String emp_marriedstatus;
	private String emp_address;
	private long emp_zipcode;
	private String emp_bankname;
	private String emp_accountno;
	private String emp_branchname;
	private String emp_ifsccode;
	private String emp_aadhaarcard;
	private String emp_pancard;
	private String emp_photo;
	private float emp_basicsalary;
	private int emp_tax;
	private float emp_finalsalary;
	private String emp_workingdays;
	private String emp_leave;
	private String emp_cutofhalfleave;
	private String emp_cutoffullleave;
	private String emp_comingtime;
	private String emp_leavingtime;
	
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
	@JoinColumn(name="company_id")
	private CompanyModel c;
	
	

	public EmployeeModel()
	{
	}
	
	public EmployeeModel(int emp_id)
	{
		this.emp_id = emp_id;
	}

	public int getEmp_id() {
		return emp_id;
	}

	public String getEmp_fullname() {
		return emp_fullname;
	}

	public String getEmp_fathername() {
		return emp_fathername;
	}

	public String getEmp_mothername() {
		return emp_mothername;
	}

	public String getEmp_password() {
		return emp_password;
	}

	public String getEmp_role() {
		return emp_role;
	}

	public String getEmp_email() {
		return emp_email;
	}

	public long getEmp_phoneno1() {
		return emp_phoneno1;
	}

	public long getEmp_phoneno2() {
		return emp_phoneno2;
	}

	public String getEmp_dob() {
		return emp_dob;
	}

	public String getEmp_bloodgroup() {
		return emp_bloodgroup;
	}

	public String getEmp_gender() {
		return emp_gender;
	}

	public String getEmp_marriedstatus() {
		return emp_marriedstatus;
	}

	public String getEmp_address() {
		return emp_address;
	}

	public long getEmp_zipcode() {
		return emp_zipcode;
	}

	public String getEmp_bankname() {
		return emp_bankname;
	}

	public String getEmp_accountno() {
		return emp_accountno;
	}

	public String getEmp_branchname() {
		return emp_branchname;
	}

	public String getEmp_ifsccode() {
		return emp_ifsccode;
	}

	public String getEmp_aadhaarcard() {
		return emp_aadhaarcard;
	}

	public String getEmp_pancard() {
		return emp_pancard;
	}

	public String getEmp_photo() {
		return emp_photo;
	}

	public float getEmp_basicsalary() {
		return emp_basicsalary;
	}

	public int getEmp_tax() {
		return emp_tax;
	}

	public float getEmp_finalsalary() {
		return emp_finalsalary;
	}

	public String getEmp_workingdays() {
		return emp_workingdays;
	}

	public String getEmp_leave() {
		return emp_leave;
	}

	public String getEmp_cutofhalfleave() {
		return emp_cutofhalfleave;
	}

	public String getEmp_cutoffullleave() {
		return emp_cutoffullleave;
	}

	public String getEmp_comingtime() {
		return emp_comingtime;
	}

	public String getEmp_leavingtime() {
		return emp_leavingtime;
	}

	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	public void setEmp_fullname(String emp_fullname) {
		this.emp_fullname = emp_fullname;
	}

	public void setEmp_fathername(String emp_fathername) {
		this.emp_fathername = emp_fathername;
	}

	public void setEmp_mothername(String emp_mothername) {
		this.emp_mothername = emp_mothername;
	}

	public void setEmp_password(String emp_password) {
		this.emp_password = emp_password;
	}

	public void setEmp_role(String emp_role) {
		this.emp_role = emp_role;
	}

	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}

	public void setEmp_phoneno1(long emp_phoneno1) {
		this.emp_phoneno1 = emp_phoneno1;
	}

	public void setEmp_phoneno2(long emp_phoneno2) {
		this.emp_phoneno2 = emp_phoneno2;
	}

	public void setEmp_dob(String emp_dob) {
		this.emp_dob = emp_dob;
	}

	public void setEmp_bloodgroup(String emp_bloodgroup) {
		this.emp_bloodgroup = emp_bloodgroup;
	}

	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}

	public void setEmp_marriedstatus(String emp_marriedstatus) {
		this.emp_marriedstatus = emp_marriedstatus;
	}

	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}

	public void setEmp_zipcode(long emp_zipcode) {
		this.emp_zipcode = emp_zipcode;
	}

	public void setEmp_bankname(String emp_bankname) {
		this.emp_bankname = emp_bankname;
	}

	public void setEmp_accountno(String emp_accountno) {
		this.emp_accountno = emp_accountno;
	}

	public void setEmp_branchname(String emp_branchname) {
		this.emp_branchname = emp_branchname;
	}

	public void setEmp_ifsccode(String emp_ifsccode) {
		this.emp_ifsccode = emp_ifsccode;
	}

	public void setEmp_aadhaarcard(String emp_aadhaarcard) {
		this.emp_aadhaarcard = emp_aadhaarcard;
	}

	public void setEmp_pancard(String emp_pancard) {
		this.emp_pancard = emp_pancard;
	}

	public void setEmp_photo(String emp_photo) {
		this.emp_photo = emp_photo;
	}

	public void setEmp_basicsalary(float emp_basicsalary) {
		this.emp_basicsalary = emp_basicsalary;
	}

	public void setEmp_tax(int emp_tax) {
		this.emp_tax = emp_tax;
	}

	public void setEmp_finalsalary(float emp_finalsalary) {
		this.emp_finalsalary = emp_finalsalary;
	}

	public void setEmp_workingdays(String emp_workingdays) {
		this.emp_workingdays = emp_workingdays;
	}

	public void setEmp_leave(String emp_leave) {
		this.emp_leave = emp_leave;
	}

	public void setEmp_cutofhalfleave(String emp_cutofhalfleave) {
		this.emp_cutofhalfleave = emp_cutofhalfleave;
	}

	public void setEmp_cutoffullleave(String emp_cutoffullleave) {
		this.emp_cutoffullleave = emp_cutoffullleave;
	}

	public void setEmp_comingtime(String emp_comingtime) {
		this.emp_comingtime = emp_comingtime;
	}

	public void setEmp_leavingtime(String emp_leavingtime) {
		this.emp_leavingtime = emp_leavingtime;
	}

	public CountryModel getCo() {
		return co;
	}

	public void setCo(CountryModel co) {
		this.co = co;
	}

	public StateModel getSt() {
		return st;
	}

	public void setSt(StateModel st) {
		this.st = st;
	}

	public CityModel getCt() {
		return ct;
	}

	public void setCt(CityModel ct) {
		this.ct = ct;
	}
	public CompanyModel getC() {
		return c;
	}

	public void setC(CompanyModel c) {
		this.c = c;
	}
	
	
	
}
