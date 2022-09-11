package OneStopJewel.Model.Dao;

import java.util.List;

public interface Genericdao {
	
	<E> E insert(E e);
	
	List getdata(String A);
	
	<E> E getdata(E r , int id);
	
	<E> void delete(E e);
	
	List getdata(String a,String where);
	
	List get(String a,String id);
	
	List getajax(String a,String b,int id);
	
	
	
	
}
