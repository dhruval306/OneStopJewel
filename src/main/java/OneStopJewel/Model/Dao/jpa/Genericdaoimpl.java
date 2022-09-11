package OneStopJewel.Model.Dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import OneStopJewel.Model.Dao.Genericdao;



@Repository
public class Genericdaoimpl implements Genericdao{

	@PersistenceContext
	private EntityManager en;
	
	@Transactional
	public <E> E insert(E e)
	{
		return en.merge(e);
	}
	
	@Transactional
	public <E> void delete(E e) {
		en.remove(en.merge(e));
	}
	
	@Transactional
	public List getdata(String A) {
		return en.createQuery("from "+A+"").getResultList();
	}
	
	@Transactional
	public List get(String a,String id) {
		return en.createQuery("from "+a+" where MIN("+id+")").getResultList();
	}

	public <E> E getdata(E r, int id) {
		return (E)en.find(r.getClass(), id);
	}
	
	@Transactional
	public List getdata(String a,String where) {
		return en.createQuery("from "+a+" where "+where+"").getResultList();
	}

	@Transactional
	public List getajax(String a, String b, int id) {
		
		return en.createQuery("from "+a+" where "+b+"="+id+"").getResultList();
		
	}

}
