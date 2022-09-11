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
@Table(name = "web_Item_ratemaster")
public class ItemMasterModel implements Serializable {
	
	@Id
	@GeneratedValue
	private int item_id;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="Type_id")
	private TypeModel type;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="category_id")
	private CategoryModel cat;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="sub_category_id")
	private SubCategoryModel subcat;
	
	@Column
	private int reorder;
	@Column
	private int overstack;
	
	@Column
	private long normal_touch;
	@Column
	private long normal_labour_per_gm;
	@Column
	private long normal_labour_per_unit;
	@Column
	private long normal_rate_per_unit;
	@Column
	private byte normal_gst;
	@Column
	private long normal_per_gm;
	@Column
	private long normal_com;
	@Column
	private long norma_com;
	@Column
	private long normal_total;
	
	
	@Column
	private long supplier_touch;
	@Column
	private long supplier_labour_per_gm;
	@Column
	private long supplier_labour_per_unit;
	@Column
	private long supplier_rate_per_unit;
	@Column
	private byte supplier_gst;
	@Column
	private long supplier_per_gm;
	@Column
	private long supplier_com;
	@Column
	private long supplie_com;
	@Column
	private long stotal;
	
	@Column
	private long retailer_touch;
	@Column
	private long retailer_labour_per_gm;
	@Column
	private long retailer_labour_per_unit;
	@Column
	private long retailer_rate_per_unit;
	@Column
	private byte retailer_gst;
	@Column
	private long retailer_per_gm;
	@Column
	private long retailer_com;
	@Column
	private long retaile_com;
	@Column
	private long rtotal;
	
	
	public ItemMasterModel() {
		super();
	}
	public ItemMasterModel(int item_id) {
		super();
		this.item_id = item_id;
	}
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public TypeModel getType() {
		return type;
	}
	public void setType(TypeModel type) {
		this.type = type;
	}
	public CategoryModel getCat() {
		return cat;
	}
	public void setCat(CategoryModel cat) {
		this.cat = cat;
	}
	public SubCategoryModel getSubcat() {
		return subcat;
	}
	public void setSubcat(SubCategoryModel subcat) {
		this.subcat = subcat;
	}
	public int getReorder() {
		return reorder;
	}
	public void setReorder(int reorder) {
		this.reorder = reorder;
	}
	public int getOverstack() {
		return overstack;
	}
	public void setOverstack(int overstack) {
		this.overstack = overstack;
	}
	public long getNormal_touch() {
		return normal_touch;
	}
	public void setNormal_touch(long normal_touch) {
		this.normal_touch = normal_touch;
	}
	public long getNormal_labour_per_gm() {
		return normal_labour_per_gm;
	}
	public void setNormal_labour_per_gm(long normal_labour_per_gm) {
		this.normal_labour_per_gm = normal_labour_per_gm;
	}
	public long getNormal_labour_per_unit() {
		return normal_labour_per_unit;
	}
	public void setNormal_labour_per_unit(long normal_labour_per_unit) {
		this.normal_labour_per_unit = normal_labour_per_unit;
	}
	public long getNormal_rate_per_unit() {
		return normal_rate_per_unit;
	}
	public void setNormal_rate_per_unit(long normal_rate_per_unit) {
		this.normal_rate_per_unit = normal_rate_per_unit;
	}
	public byte getNormal_gst() {
		return normal_gst;
	}
	public void setNormal_gst(byte normal_gst) {
		this.normal_gst = normal_gst;
	}
	public long getNormal_per_gm() {
		return normal_per_gm;
	}
	public void setNormal_per_gm(long normal_per_gm) {
		this.normal_per_gm = normal_per_gm;
	}
	public long getNormal_com() {
		return normal_com;
	}
	public void setNormal_com(long normal_com) {
		this.normal_com = normal_com;
	}
	public long getNorma_com() {
		return norma_com;
	}
	public void setNorma_com(long norma_com) {
		this.norma_com = norma_com;
	}
	public long getSupplier_touch() {
		return supplier_touch;
	}
	public void setSupplier_touch(long supplier_touch) {
		this.supplier_touch = supplier_touch;
	}
	public long getSupplier_labour_per_gm() {
		return supplier_labour_per_gm;
	}
	public void setSupplier_labour_per_gm(long supplier_labour_per_gm) {
		this.supplier_labour_per_gm = supplier_labour_per_gm;
	}
	public long getSupplier_labour_per_unit() {
		return supplier_labour_per_unit;
	}
	public void setSupplier_labour_per_unit(long supplier_labour_per_unit) {
		this.supplier_labour_per_unit = supplier_labour_per_unit;
	}
	public long getSupplier_rate_per_unit() {
		return supplier_rate_per_unit;
	}
	public void setSupplier_rate_per_unit(long supplier_rate_per_unit) {
		this.supplier_rate_per_unit = supplier_rate_per_unit;
	}
	public byte getSupplier_gst() {
		return supplier_gst;
	}
	public void setSupplier_gst(byte supplier_gst) {
		this.supplier_gst = supplier_gst;
	}
	public long getSupplier_per_gm() {
		return supplier_per_gm;
	}
	public void setSupplier_per_gm(long supplier_per_gm) {
		this.supplier_per_gm = supplier_per_gm;
	}
	public long getSupplier_com() {
		return supplier_com;
	}
	public void setSupplier_com(long supplier_com) {
		this.supplier_com = supplier_com;
	}
	public long getSupplie_com() {
		return supplie_com;
	}
	public void setSupplie_com(long supplie_com) {
		this.supplie_com = supplie_com;
	}
	public long getRetailer_touch() {
		return retailer_touch;
	}
	public void setRetailer_touch(long retailer_touch) {
		this.retailer_touch = retailer_touch;
	}
	public long getRetailer_labour_per_gm() {
		return retailer_labour_per_gm;
	}
	public void setRetailer_labour_per_gm(long retailer_labour_per_gm) {
		this.retailer_labour_per_gm = retailer_labour_per_gm;
	}
	public long getRetailer_labour_per_unit() {
		return retailer_labour_per_unit;
	}
	public void setRetailer_labour_per_unit(long retailer_labour_per_unit) {
		this.retailer_labour_per_unit = retailer_labour_per_unit;
	}
	public long getRetailer_rate_per_unit() {
		return retailer_rate_per_unit;
	}
	public void setRetailer_rate_per_unit(long retailer_rate_per_unit) {
		this.retailer_rate_per_unit = retailer_rate_per_unit;
	}
	public byte getRetailer_gst() {
		return retailer_gst;
	}
	public void setRetailer_gst(byte retailer_gst) {
		this.retailer_gst = retailer_gst;
	}
	public long getRetailer_per_gm() {
		return retailer_per_gm;
	}
	public void setRetailer_per_gm(long retailer_per_gm) {
		this.retailer_per_gm = retailer_per_gm;
	}
	public long getRetailer_com() {
		return retailer_com;
	}
	public void setRetailer_com(long retailer_com) {
		this.retailer_com = retailer_com;
	}
	public long getRetaile_com() {
		return retaile_com;
	}
	public void setRetaile_com(long retaile_com) {
		this.retaile_com = retaile_com;
	}
	public long getNormal_total() {
		return normal_total;
	}
	public void setNormal_total(long normal_total) {
		this.normal_total = normal_total;
	}
	public long getStotal() {
		return stotal;
	}
	public void setStotal(long stotal) {
		this.stotal = stotal;
	}
	public long getRtotal() {
		return rtotal;
	}
	public void setRtotal(long rtotal) {
		this.rtotal = rtotal;
	}
	
	
	
	
	
	

}
