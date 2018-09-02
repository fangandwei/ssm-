package dao;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import domain.Admin;
import domain.Homework;
import domain.StuHom;
public class AdminDao extends HibernateDaoSupport{

	public Admin findOne() {
		// TODO Auto-generated method stub
		List find = this.getHibernateTemplate().find("from Admin");
		Admin admin1=new Admin();
		for (Object admin : find) {
			 admin1=(Admin)admin;
			System.out.println(admin1);
			
		}
		return admin1;
	}

	public List<Homework> cxzy() {
		// TODO Auto-generated method stub
		 List find = this.getHibernateTemplate().find("from Homework");
		return  find;
	}

//	public void upthw(Homework homework,String id) {
//		
//		
//		this.getHibernateTemplate().saveOrUpdate(homework);
//		
//	}

	public void delhw(Homework hm) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(hm);
		
	}
	public void delhw(StuHom sm) {
		// TODO Auto-generated method stub
		if(sm!=null){
		this.getHibernateTemplate().delete(sm);
		}
	}

	public Homework findById(Integer id) {
		// TODO Auto-generated method stub
	   return	this.getHibernateTemplate().get(Homework.class, id);
		
	}
	
	public List<StuHom> findById(Integer id,String in) {
		// TODO Auto-generated method stub
	   return  this.getHibernateTemplate().find("from domain.StuHom sm where sm.homework.id=?",id);
		
	}

	public void upthw(Homework homework,Integer id) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().saveOrUpdate(homework);
	}
	
	
	
	
}
