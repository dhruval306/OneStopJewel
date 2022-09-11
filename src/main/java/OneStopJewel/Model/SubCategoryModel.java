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
@Table(name = "web_subCategory")
public class SubCategoryModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int sub_category_id;
	@Column(length = 40, unique = true)
	private String sub_category_name;
	@Column(length = 40)
	private String image;
	@Column
	private int category_id;
	
	
	public SubCategoryModel() {
		super();
	}
	public SubCategoryModel(int sub_category_id) {
		super();
		this.sub_category_id = sub_category_id;
	}
	public int getSub_category_id() {
		return sub_category_id;
	}
	public String getSub_category_name() {
		return sub_category_name;
	}
	public void setSub_category_id(int sub_category_id) {
		this.sub_category_id = sub_category_id;
	}
	public void setSub_category_name(String sub_category_name) {
		this.sub_category_name = sub_category_name;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getImage() {
		return image;
	}

}
