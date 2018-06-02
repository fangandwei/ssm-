package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import domain.FileQueryTeacher;
import domain.Tea;

public class TeacherDao extends HibernateDaoSupport{
	//添加老师
	public void addTea(Tea tea){
		this.getHibernateTemplate().save(tea);
		
	}

	public List<Tea> findall() {
		// TODO Auto-generated method stub
		String sql ="from Tea";
		return this.getHibernateTemplate().find(sql);
	}
	/* SELECT  stu_hom.state,stu.name,homework.hname, stu.id
	 FROM  stu_hom, stu, homework,stu_tea ,tea
	 WHERE stu_hom.sid=stu.id AND stu_hom.hid=homework.id 
	    AND  stu_tea.sid =stu.id AND  stu_tea.tid=tea.id
	        AND tea.`id`=(SELECT tea.`id`
	 FROM  tea
	 WHERE tea.`name`='zls');*/
	
	

	public List<FileQueryTeacher> findbyname(String tename) {
		List<FileQueryTeacher> list1=new ArrayList<FileQueryTeacher>();
		String sql="SELECT  homework.hname ,stu.name ,homework.text ,stu_hom.state"
                   +" FROM  stu_hom, stu, homework,stu_tea ,tea "
                   +" WHERE stu_hom.sid=stu.id AND stu_hom.hid=homework.id" 
	   + " AND  stu_tea.sid =stu.id AND  stu_tea.tid=tea.id"
	    + " AND tea.`id`=(SELECT tea.id FROM  tea WHERE tea.name=?)";
	/*	//数组定义方式
		Object [] obj=new Object [] {tename,sname};
		SQLQuery query = this.getSession()
				.createSQLQuery(sql);
		//给多个?设置值
		for (int i = 0; i < obj.length; i++) {
			query.setParameter(i, obj[i]);
		}*/
		SQLQuery query = (SQLQuery) this.getSession()
				.createSQLQuery(sql).setParameter(0,tename);
						
		List list = query.list();
		//查出来的数据是list，里面的一个个元素分别是obj []
        Iterator iterator = list.iterator(); 
        while(iterator.hasNext()){
        	
        	Object [] next = (Object[]) iterator.next();
        	//进行转换，分装到提前设置好的list中
        	String hname=(String) next[0];
        	String name=(String) next[1];
        	String text=(String) next[2];
            Integer  state=(Integer) next[3];
            String string = state.toString();
         //用一个扩展类将数据分装   
         FileQueryTeacher filequery=new FileQueryTeacher(hname,name,text,string);
            list1.add(filequery);
        }
        System.out.println(list1);
		return list1;
	}
     //老师发布作业
	public void fabuzuoye(String text,String hname,String  name) {
		//把原来的作业查出来
		//添加新作业
		/*UPDATE homework
		SET homework.`text`='1，你觉得学习离散数学有什么用？' ,hname='离散数学'
		WHERE tid=(SELECT id
		FROM tea
		WHERE tea.`name`='zls');*/
       String sql="UPDATE homework" 
       +" SET homework.text=? ,hname=? "
       +" WHERE tid=(SELECT id "
       +" FROM tea WHERE tea.name=?);";
       SQLQuery query = this.getSession().createSQLQuery(sql);
      String [] para=new String []{text,hname,name};
        for (int i = 0; i < para.length; i++) {
			query.setParameter(i, para[i]);
		}
       //       query.setParameter("0", text);
       query.executeUpdate();		
		
		
	}
	
	
    
}
