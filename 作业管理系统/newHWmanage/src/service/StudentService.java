package service;

import java.util.List;

import dao.StudentDao;
import domain.FileQueryStudent;
import domain.Homework;
import domain.Stu;

public class StudentService {
	
	private StudentDao StuDao;
	
	
	public void setStudenDao(StudentDao studenDao) {
		this.StuDao = studenDao;
	}
	public List<Stu> findall(){
		
		return StuDao.findall();
		}
	public List<Stu> findOne() {
		// TODO Auto-generated method stub
		return StuDao.findOne();
	}
	public List<FileQueryStudent> findH(String yourname){
		if(StuDao.findallHom(yourname)!=null){
		return StuDao.findallHom(yourname);
		}
		else
			 throw new RuntimeException("你没有作业");
	}
	
	//增加学生
		public  void addstu(Stu stu,String[] values){
			StuDao.addStu(stu,values);
			
		}
		public void updatezuoyestate(String name ,String mytext,String hname) {
			// TODO Auto-generated method stub
			StuDao.updatezuoyestate(name,mytext,hname);
		}
		public List  catdetail(String name1) {
			// TODO Auto-generated method stub
			return  StuDao.chaid(name1);
			
		}
		
		
		
	
	
	
	
	
	

}
