package OneStopJewel.web;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import OneStopJewel.Model.AreaModel;
import OneStopJewel.Model.CategoryModel;
import OneStopJewel.Model.CityModel;
import OneStopJewel.Model.CompanyModel;
import OneStopJewel.Model.CountryModel;
import OneStopJewel.Model.EmployeeModel;
import OneStopJewel.Model.ItemMasterModel;
import OneStopJewel.Model.PaymentmethodModel;
import OneStopJewel.Model.PrivilegeModel;
import OneStopJewel.Model.RoleModel;
import OneStopJewel.Model.SalesPartyInfoModel;
import OneStopJewel.Model.StateModel;
import OneStopJewel.Model.SubCategoryModel;
import OneStopJewel.Model.SubTypeRateModel;
import OneStopJewel.Model.TypeModel;
import OneStopJewel.Model.TyperateModel;
import OneStopJewel.Model.UserModel;
import OneStopJewel.Model.saleitemModel;
import OneStopJewel.Model.Dao.Genericdao;
@Controller
public class FileController {
	@Autowired
	Genericdao dao;
	@Autowired
	ServletContext x;
	public File get() {
		return new File(x.getRealPath("upload/"));
	}
	@RequestMapping(value = "welcome.com", method = RequestMethod.GET)
	public String welcome(HttpServletResponse response, HttpServletRequest request, HttpSession s, ModelMap m) {
		try {
			s = request.getSession();
			s.invalidate();
			return "login";
		} catch (Exception e) {
			m.put("msg", "Invalid Username & Password !!!");
			return "login";
		}
	}
	@RequestMapping(value = "loginError.com", method = RequestMethod.GET)
	public String loginError(ModelMap m) {
		m.put("msg", "Invalid Username & Password !!!");
		return "login";
	}
	@RequestMapping(value = "user_registration.com", method = RequestMethod.GET)
	public String user_registration(ModelMap m) {
		m.put("userdata", new UserModel());
		return "user_registration";
	}
	@RequestMapping(value = "user_registration.com", method = RequestMethod.POST)
	public String user_registration(@RequestParam("userimage") MultipartFile userimage, @ModelAttribute("userdata") UserModel m, BindingResult s) {
		String abc = "";
		if (userimage != null) {
			try {
				userimage.transferTo(new File(get(), userimage.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
				return "redirect:cat.com?a=0";
			} catch (IOException e) {
				e.printStackTrace();
				return "redirect:cat.com?a=0";
			}
			abc = userimage.getOriginalFilename();
		}
		m.setImage(abc);
		dao.insert(m);
		return "redirect:user_registration.com";
	}
	@RequestMapping(value = "forgetpassword.com", method = RequestMethod.GET)
	public String forgetpassword() {
		return "forgetpassword";
	}
	@RequestMapping(value = "mas.com", method = RequestMethod.GET)
	public String role(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("role", new RoleModel());
		} else {
			m.put("role", dao.getdata(new RoleModel(), id));
		}
		m.put("roledata", dao.getdata("RoleModel"));
		return "role";
	}
	@RequestMapping(value = "mas.com", method = RequestMethod.POST)
	public String role(@ModelAttribute("role") RoleModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:mas.com?a=0";
	}
	@RequestMapping(value = "roledelete.com", method = RequestMethod.GET)
	public String role_delete(@RequestParam("a") int id, ModelMap m) {
		RoleModel r = new RoleModel(id);
		dao.delete(r);
		return "redirect:mas.com?a=0";
	}
	@RequestMapping(value = "privilege.com", method = RequestMethod.GET)
	public String privilege(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("privilege", new PrivilegeModel());
		} else {
			m.put("privilege", dao.getdata(new PrivilegeModel(), id));
		}
		m.put("privilegedata", dao.getdata("PrivilegeModel"));
		return "privilege";
	}
	@RequestMapping(value = "privilege.com", method = RequestMethod.POST)
	public String privilege(@ModelAttribute("privilege") PrivilegeModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:privilege.com?a=0";
	}
	@RequestMapping(value = "pdelete.com", method = RequestMethod.GET)
	public String privilege_delete(@RequestParam("a") int id, ModelMap m) {
		PrivilegeModel r = new PrivilegeModel(id);
		dao.delete(r);
		return "redirect:privilege.com?a=0";
	}
	@RequestMapping(value = "AssignPrivilegetoRole.com", method = RequestMethod.GET)
	public String Assign_Privilege_to_Role(ModelMap m) {
		//		m.put("roledata", dao.getdata("RoleModel"));
		return "Assign_Privilege_to_Role";
	}
	@RequestMapping(value = "AssignPrivilegetouser.com", method = RequestMethod.GET)
	public String Assign_Privilege_to_user() {
		return "Assign_Privilege_to_user";
	}
	@RequestMapping(value = "company.com", method = RequestMethod.GET)
	public String company(@RequestParam("a") int id, ModelMap m) {
		m.put("area", new AreaModel());
		m.put("company", new CompanyModel());
		m.put("countrydata", dao.getdata("CountryModel"));
		m.put("statedata", dao.getdata("StateModel"));
		m.put("citydata", dao.getdata("CityModel"));
		m.put("areadata", dao.getdata("AreaModel"));
		m.put("companydata", dao.getdata("CompanyModel"));
		return "company";
	}
	@RequestMapping(value = "com.com", method = RequestMethod.POST)
	public String company(@ModelAttribute("area") AreaModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:company.com?a=0";
	}
	@RequestMapping(value = "company.com", method = RequestMethod.POST)
	public String company(@RequestParam("logo") MultipartFile logo, @ModelAttribute("company") CompanyModel r, BindingResult s) {
		String abc = "";
		if (logo != null) {
			try {
				logo.transferTo(new File(get(), logo.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
				return "redirect:company.com?a=0";
			} catch (IOException e) {
				e.printStackTrace();
				return "redirect:company.com?a=0";
			}
			abc = logo.getOriginalFilename();
		}
		r.setLogo(abc);
		dao.insert(r);
		return "redirect:company.com?a=0";
	}
	@RequestMapping(value = "comdelete.com", method = RequestMethod.GET)
	public String company_delete(@RequestParam("a") int id, ModelMap m) {
		CompanyModel r = new CompanyModel(id);
		dao.delete(r);
		return "redirect:company.com?a=0";
	}
	@RequestMapping(value = "cat.com", method = RequestMethod.GET)
	public String category(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("category", new CategoryModel());
			m.put("categorydata", dao.getdata("CategoryModel"));
		} else {
			m.put("category", new CategoryModel());
			m.put("categorydata", dao.getdata("CategoryModel", "type_id = '" + id + "'"));
		}
		m.put("typedata", dao.getdata("TypeModel"));
		return "category";
	}
	@RequestMapping(value = "cat.com", method = RequestMethod.POST)
	public String category(@RequestParam("categoryimage") MultipartFile categoryimage, @ModelAttribute("category") CategoryModel m, BindingResult s) {
		String abc = "";
		if (categoryimage != null) {
			try {
				categoryimage.transferTo(new File(get(), categoryimage.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
				return "redirect:cat.com?a=0";
			} catch (IOException e) {
				e.printStackTrace();
				return "redirect:cat.com?a=0";
			}
			abc = categoryimage.getOriginalFilename();
		}
		m.setImage(abc);
		dao.insert(m);
		return "redirect:cat.com?a=0";
	}
	@RequestMapping(value = "catdelete.com", method = RequestMethod.GET)
	public String category_delete(@RequestParam("a") int id, ModelMap m) {
		CategoryModel r = new CategoryModel(id);
		dao.delete(r);
		return "redirect:cat.com?a=0";
	}
	@RequestMapping(value = "subcat.com", method = RequestMethod.GET)
	public String sub_category(@RequestParam("a") int id, ModelMap m) {
		m.put("categorydata", dao.getdata(new CategoryModel(), id));
		m.put("subcategory", new SubCategoryModel());
		m.put("subcategorydata", dao.getdata("SubCategoryModel", "category_id = '" + id + "'"));
		return "sub_category";
	}
	@RequestMapping(value = "subcat.com", method = RequestMethod.POST)
	public String sub_category(@RequestParam("a") int id, @RequestParam("category_id") int category_id, @RequestParam("subcategoryimage") MultipartFile subcategoryimage, @ModelAttribute("subcategory") SubCategoryModel m, BindingResult s) {
		String abc = "";
		if (subcategoryimage != null) {
			try {
				subcategoryimage.transferTo(new File(get(), subcategoryimage.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
				return "redirect:subcat.com?a=" + id + "";
			} catch (IOException e) {
				e.printStackTrace();
				return "redirect:subcat.com?a=" + id + "";
			}
			abc = subcategoryimage.getOriginalFilename();
		}
		m.setImage(abc);
		m.setCategory_id(category_id);
		dao.insert(m);
		return "redirect:subcat.com?a=" + id + "";
	}
	@RequestMapping(value = "privilegecomp.com", method = RequestMethod.GET)
	public String privilege_component() {
		return "privilegecomp";
	}
	@RequestMapping(value = "addprivilege.com", method = RequestMethod.GET)
	public String add_privilege() {
		return "add_privilege";
	}
	@RequestMapping(value = "pay.com", method = RequestMethod.GET)
	public String payment_method(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("method", new PaymentmethodModel());
		}
		m.put("methoddata", dao.getdata("PaymentmethodModel"));
		return "payment";
	}
	@RequestMapping(value = "pay.com", method = RequestMethod.POST)
	public String payment_method(@ModelAttribute("method") PaymentmethodModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:pay.com?a=0";
	}
	@RequestMapping(value = "paydelete.com", method = RequestMethod.GET)
	public String payment_delete(@RequestParam("a") int id, ModelMap m) {
		PaymentmethodModel r = new PaymentmethodModel(id);
		dao.delete(r);
		return "redirect:pay.com?a=0";
	}
	@RequestMapping(value = "type.com", method = RequestMethod.GET)
	public String type(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("type", new TypeModel());
		}
		m.put("typedata", dao.getdata("TypeModel"));
		return "type";
	}
	@RequestMapping(value = "type.com", method = RequestMethod.POST)
	public String type(@ModelAttribute("type") TypeModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:type.com?a=0";
	}
	@RequestMapping(value = "typedelete.com", method = RequestMethod.GET)
	public String type_delete(@RequestParam("a") int id, ModelMap m) {
		TypeModel r = new TypeModel(id);
		dao.delete(r);
		return "redirect:type.com?a=0";
	}
	@RequestMapping(value = "subtype.com", method = RequestMethod.GET)
	public String subtype(@RequestParam("a") int id, ModelMap m) {
		m.put("type", dao.getdata("TypeModel", "type_id = '" + id + "'"));
		m.put("stype", new SubTypeRateModel());
		m.put("subtypedata", dao.getdata("SubTypeRateModel", "tid = '" + id + "'"));
		return "subtype";
	}
	@RequestMapping(value = "subtype.com", method = RequestMethod.POST)
	public String subtype(@RequestParam("a") int id, @RequestParam("tid") int type_id, @ModelAttribute("stype") SubTypeRateModel m, BindingResult s) {
		TypeModel t = new TypeModel(type_id);
		m.setT(t);
		dao.insert(m);
		return "redirect:subtype.com?a=" + id + "";
	}
	@RequestMapping(value = "emp.com", method = RequestMethod.GET)
	public String employee(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("emp", dao.getdata("EmployeeModel", "emp_id = '" + 1 + "'"));
		} else {
			m.put("emp", dao.getdata("EmployeeModel", "emp_id = '" + id + "'"));
		}
		m.put("employeedata", dao.getdata("EmployeeModel"));
		return "emp";
	}
	@RequestMapping(value = "addnewemp.com", method = RequestMethod.GET)
	public String add_employee(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("employee", new EmployeeModel());
		} else {
			m.put("employee", dao.getdata(new EmployeeModel(), id));
		}
		m.put("countrydata", dao.getdata("CountryModel"));
		m.put("statedata", dao.getdata("StateModel"));
		m.put("citydata", dao.getdata("CityModel"));
		m.put("companydata", dao.getdata("CompanyModel"));
		m.put("roledata", dao.getdata("RoleModel"));
		return "addnewemp";
	}
	@RequestMapping(value = "addnewemp.com", method = RequestMethod.POST)
	public String add_employee(@RequestParam("emp_aadhaarcard") MultipartFile aa, @RequestParam("emp_pancard") MultipartFile bb, @RequestParam("emp_photo") MultipartFile cc, @ModelAttribute("employee") EmployeeModel m, BindingResult s) {
		String a = "";
		String b = "";
		String c = "";
		if (aa != null && bb != null && cc != null) {
			try {
				aa.transferTo(new File(get(), aa.getOriginalFilename()));
				bb.transferTo(new File(get(), bb.getOriginalFilename()));
				cc.transferTo(new File(get(), cc.getOriginalFilename()));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				return "redirect:emp.com?a=0";
			}
			a = aa.getOriginalFilename();
			b = bb.getOriginalFilename();
			c = cc.getOriginalFilename();
		}
		m.setEmp_aadhaarcard(a);
		m.setEmp_pancard(b);
		m.setEmp_photo(c);
		dao.insert(m);
		return "redirect:emp.com?a=0";
	}
	@RequestMapping(value = "country.com", method = RequestMethod.GET)
	public String Country(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("country", new CountryModel());
		}
		m.put("countrydata", dao.getdata("CountryModel"));
		return "country";
	}
	@RequestMapping(value = "country.com", method = RequestMethod.POST)
	public String Country(@ModelAttribute("country") CountryModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:country.com?a=0";
	}
	@RequestMapping(value = "countrydelete.com", method = RequestMethod.GET)
	public String country_delete(@RequestParam("a") int id, ModelMap m) {
		CountryModel r = new CountryModel(id);
		dao.delete(r);
		return "redirect:country.com?a=0";
	}
	@RequestMapping(value = "state.com", method = RequestMethod.GET)
	public String State(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("state", new StateModel());
		}
		m.put("statedata", dao.getdata("StateModel"));
		m.put("countrydata", dao.getdata("CountryModel"));
		return "state";
	}
	@RequestMapping(value = "state.com", method = RequestMethod.POST)
	public String State(@ModelAttribute("state") StateModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:state.com?a=0";
	}
	@RequestMapping(value = "city.com", method = RequestMethod.GET)
	public String City(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("city", new CityModel());
		}
		m.put("countrydata", dao.getdata("CountryModel"));
		m.put("statedata", dao.getdata("StateModel"));
		m.put("citydata", dao.getdata("CityModel"));
		return "city";
	}
	@RequestMapping(value = "city.com", method = RequestMethod.POST)
	public String City(@ModelAttribute("city") CityModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:city.com?a=0";
	}
	@RequestMapping(value = "typerate.com", method = RequestMethod.GET)
	public String Type_rate(@RequestParam("a") int id, ModelMap m) {
		if (id == 0) {
			m.put("typerate", new TyperateModel());
		}
		m.put("typeratedata", dao.getdata("TyperateModel"));
		m.put("typedata", dao.getdata("TypeModel"));
		return "typerate";
	}
	@RequestMapping(value = "typerate.com", method = RequestMethod.POST)
	public String Type_rate(@ModelAttribute("typerate") TyperateModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:typerate.com?a=0";
	}
	@RequestMapping(value = "addsalesparty.com", method = RequestMethod.GET)
	public String add_salesparty(@RequestParam("a") int id, ModelMap m) {
		m.put("countrydata", dao.getdata("CountryModel"));
		m.put("statedata", dao.getdata("StateModel"));
		m.put("citydata", dao.getdata("CityModel"));
		m.put("spartydata", new SalesPartyInfoModel());
		m.put("partydata", dao.getdata("SalesPartyInfoModel"));
		return "addsalesparty";
	}
	@RequestMapping(value = "addsalesparty.com", method = RequestMethod.POST)
	public String add_salesparty(@ModelAttribute("spartydata") SalesPartyInfoModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:addsalesparty.com?a=0";
	}
	@RequestMapping(value = "profile.com", method = RequestMethod.GET)
	public String UserProfile() {
		return "UserProfile";
	}
	@RequestMapping(value = "item.com", method = RequestMethod.GET)
	public String ItemMaster(@RequestParam("a") int id, ModelMap m) {
		m.put("typedata", dao.getdata("TypeModel"));
		return "ItemMaster";
	}
	@RequestMapping(value = "itemcategory.com", method = RequestMethod.GET)
	public String itemcategory(@RequestParam("a") int id, ModelMap m) {
		m.put("categorydata", dao.getdata("CategoryModel", "type_id = '" + id + "'"));
		return "ItemMaster";
	}
	@RequestMapping(value = "itemsubcategory.com", method = RequestMethod.GET)
	public String itemsubcategory(@RequestParam("a") int id, ModelMap m) {
		m.put("cat", dao.getdata("CategoryModel", "category_id = '" + id + "'"));
		m.put("scat", dao.getdata("SubCategoryModel", "category_id = '" + id + "'"));
		m.put("itemmasterdata", dao.getdata("ItemMasterModel", "category_id = '" + id + "'"));
		m.put("items", dao.getdata("ItemMasterModel"));
		m.put("item", new ItemMasterModel());
		return "ItemMaster";
	}
	@RequestMapping(value = "itemsubcategory.com", method = RequestMethod.POST)
	public String itemsubcategory(@RequestParam("a") int id, @ModelAttribute("item") ItemMasterModel m, BindingResult s) {
		dao.insert(m);
		return "redirect:itemsubcategory.com?a=" + id + "";
	}
	@RequestMapping(value = "saleitem.com", method = RequestMethod.GET)
	public String sale(@RequestParam("a") int id, @RequestParam("a") int pid, ModelMap m) {
		if (id == 0) {
			m.put("partydata", dao.getdata("SalesPartyInfoModel"));
		} else {
			m.put("salesparty", dao.getdata("SalesPartyInfoModel", "salesparty_id = '" + pid + "'"));
		}
		m.put("items", dao.getdata("ItemMasterModel"));
		m.put("gold", dao.getdata("TypeModel", "type_name = 'gold' "));
		m.put("silver", dao.getdata("TypeModel", "type_name = 'silver' "));
		m.put("subtypedata", dao.getdata("SubTypeRateModel"));
		return "sale";
	}
	@RequestMapping(value = "saleitem.com", method = RequestMethod.POST)
	public String sale(@RequestParam("a") int id, @RequestParam("wtotal") Float wtotal, @ModelAttribute("saleitem") saleitemModel m, BindingResult s) {
		m.setWtotal(wtotal);
		dao.insert(m);
		return "sale";
	}
	@RequestMapping(value = "dashboard.com", method = RequestMethod.GET)
	public String Dashboard(@RequestParam("a") int id, Principal a, HttpServletResponse response, HttpServletRequest request, HttpSession s) {
		UserModel ss = (UserModel) dao.getdata("UserModel", "username = '" + a.getName() + "'").get(0);
		s = request.getSession();
		s.setAttribute("id", ss.getUser_id());
		s.setAttribute("name", ss.getFull_name());
		s.setAttribute("email", ss.getEmail());
		s.setAttribute("username", ss.getUsername());
		s.setAttribute("role", ss.getRole());
		s.setAttribute("address", ss.getAddress());
		s.setAttribute("number", ss.getNumber());
		s.setAttribute("image", ss.getImage());
		s.setAttribute("gender", ss.getGender());
		return "dashboard";
	}
	@RequestMapping(value = "citydata.com", method = RequestMethod.POST, headers = "Accept=*/*", produces = "application/json")
	public @ResponseBody List abc(@RequestParam("id") int id) {
		List < StateModel > ls1 = dao.getajax("StateModel", "country_id", id);
		System.out.println(ls1.size());
		return ls1;
	}
}