package action;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import domain.Admin;
import domain.Homework;
import domain.StuHom;
import service.AdminService;

public class AdminAction extends ActionSupport implements ModelDriven<Admin>{
	/**
	 * 
	 */
	
	private String hname;
	private String text;
	
	
	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	private AdminService adminService;
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	private static final long serialVersionUID = 1L;
	private Admin admin=new Admin();
	public Admin getModel() {
		// TODO Auto-generated method stub
		return  admin;
	}
	
	//实现超级管理员的登陆操作
	public  String  superlogin(){
		Admin admin1 = adminService.findOne();
		if(admin1.getName().equals(admin.getName())&&admin1.getPassword().equals(admin.getPassword())){
			
			return SUCCESS;
		}
		else{
			
			return ERROR;
		}
	   
	}	
	//实现查询作业操作
	public String cxzy(){
	 List<Homework> hwlist = adminService.cxzy();
	 System.out.println(hwlist);
	 ActionContext.getContext().getSession().put("hwlist", hwlist);
		
		return SUCCESS;
	}
	
	
//	upthw
	
	public String upthw(){
		String id1 = ServletActionContext.getRequest().getParameter("id");
		 int id = Integer.parseInt(id1);
		 ActionContext.getContext().getSession().put("upid", id);
		return SUCCESS;
	}
	
	public String updatehw(){

       Integer id = (Integer) ActionContext.getContext().getSession().get("upid");		
       Homework  homework=new Homework();
		homework.setId(id);
		homework.setHname(hname);
		homework.setText(text);
	    this.adminService.upthw(homework,id);		
		
		
		
		 
		return SUCCESS;
	}
	
	
	
//	delhw
	public String delhw(){
		   String id1 = ServletActionContext.getRequest().getParameter("id");
           System.out.println(id1);
		   int id = Integer.parseInt(id1);
		   String in="in";
		   List<StuHom> sms = adminService.findById(id, in);
		   for (StuHom stuHom2 : sms) {
			this.adminService.delhw(stuHom2);
		   }
		   Homework homework = adminService.findById(id);
		   adminService.delhw(homework);
		return SUCCESS;
	}
}
