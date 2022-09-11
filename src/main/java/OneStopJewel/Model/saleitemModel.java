package OneStopJewel.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "abc")
public class saleitemModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int saleitem_id;
	
	@Column
	private Float wtotal;

	public int getSaleitem_id() {
		return saleitem_id;
	}

	public void setSaleitem_id(int saleitem_id) {
		this.saleitem_id = saleitem_id;
	}

	public Float getWtotal() {
		return wtotal;
	}

	public void setWtotal(Float wtotal) {
		this.wtotal = wtotal;
	}
	
	
	
	}
