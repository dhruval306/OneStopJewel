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
@Table(name = "web_Category")
public class CategoryModel implements Serializable{
	
	@Id
	@GeneratedValue
	private int category_id;
	@Column(length = 40, unique = true)
	private String category_name;
	@Column
	private String image;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="type_id")
	private TypeModel type;
	
	
	public CategoryModel() {
		super();
	}
	public CategoryModel(int category_id) {
		super();
		this.category_id = category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setType(TypeModel type) {
		this.type = type;
	}
	public int getCategory_id() {
		return category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public String getImage() {
		return image;
	}
	public TypeModel getType() {
		return type;
	}
	
	

}
