package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "web_Payment_method")
public class PaymentmethodModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int method_id;
	@Column(length = 40)
	private String method_name;
	
	
	public PaymentmethodModel() {
		super();
	}
	public PaymentmethodModel(int method_id) {
		super();
		this.method_id = method_id;
	}
	public void setMethod_id(int method_id) {
		this.method_id = method_id;
	}
	public void setMethod_name(String method_name) {
		this.method_name = method_name;
	}
	public int getMethod_id() {
		return method_id;
	}
	public String getMethod_name() {
		return method_name;
	}
	
	

}
