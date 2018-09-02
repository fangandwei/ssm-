package service;

import java.util.List;

import dao.AdminDao;
import domain.Admin;
import domain.FileQueryStudent;
import domain.Homework;
import domain.Stu;
import domain.StuHom;

public class AdminService {
	
	private AdminDao adminDao;
	
	
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
//	public List<Admin> findall(){
//		
//		return adminDao.findall();
//		}
	public Admin findOne() {
		// TODO Auto-generated method stub
		return adminDao.findOne();
	}
	public List<Homework> cxzy() {
		// TODO Auto-generated method stub
		
		return adminDao.cxzy();
		
	}
//	public void upthw(Homework homework,String id) {
//		
//		  adminDao.upthw(homework,id);
//		
//	}
	public void delhw(Homework homework) {
		// TODO Auto-generated method stub
		
		adminDao.delhw( homework);
	}
	public void delhw(StuHom stuhom) {
		// TODO Auto-generated method stub
		
		adminDao.delhw(stuhom);
	}
	public Homework  findById(Integer id) {
		// TODO Auto-generated method stub
		return adminDao.findById(id);
		
	}
	public List<StuHom>  findById(Integer id,String in) {
		// TODO Auto-generated method stub
		return adminDao.findById(id,in);
		
	}
	public void upthw(Homework homework,Integer id) {
		adminDao.upthw(homework,id);
		
	}
	
		
		
	
	
	
	
	
	

}
