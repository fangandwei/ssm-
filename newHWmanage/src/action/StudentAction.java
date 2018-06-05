package action;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.http.HttpRequest;

import service.StudentService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

import domain.FileQueryStudent;
import domain.Stu;
import domain.StuTea;
import domain.Tea;

public class StudentAction extends ActionSupport implements ModelDriven<Stu>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Stu student=new Stu();
	private StudentService studentService;
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	@Override
	public Stu getModel() {
		// TODO Auto-generated method stub
		return student;
	}
	//实现登陆操作
	
	public  String login(){
		//如果用户选择了学生登陆，就用学生登陆的方法，否则用老师的
		
		      HttpServletRequest request = ServletActionContext.getRequest();
		      String parameter = request.getParameter("select");
		      System.out.println(parameter);
		      if(parameter.equals("学生登录")){
		    	 return "success";
			
		}else{
			return "error";
			
		}
	}
	//实现学生的登陆操作
	public  String  slogin(){
		//查出数据库中的所有记录，List  然后遍历，如果有和前台传过来的字符串相匹配的
//		就允许登陆，否则不能
	List<Stu> students=studentService.findall();
	for (Stu Evstudent : students) {
		System.out.println("--------------");
		System.out.println(student.getName());
		System.out.println(student.getPassword());
		if(student.getName().equals(Evstudent.getName())&&
		   student.getPassword().equals(Evstudent.getPassword())		
		 ){
	//存name；		
	ActionContext.getContext().getSession().put("name", student.getName());
			System.out.println(Evstudent);
			return SUCCESS;
			
		}
	}
	//上面一旦return  下面就不走了，所以不用担心还会走下面的
    ValueStack stack = ServletActionContext.getContext().getValueStack();
			stack.set("error", "登陆失败，请重登");
			return ERROR;

	}
	public String execute(){
		//查值
		List<Stu> list = studentService.findall();
		System.out.println(list);
		//放值
		ActionContext context = ServletActionContext.getContext();
		context.put("list", list);
		return SUCCESS;
		
	}
	public String findallhbyname(){
		//从session中取出名字查数据
		List<FileQueryStudent> homeworks= studentService.findH((String) ActionContext.getContext().getSession().get("name"));
		System.out.println(homeworks);
		//将数据放在ActionContext中，用于在前台展示
		//???
	   Map<String, Object> session = ServletActionContext.getContext().getSession();
		session.put("homeworks", homeworks);
		
		return SUCCESS;
	}
	public String catDetail(){
		return findallhbyname();
	}
	//实现注册
	public String addStu(){	
		
		
		//这样注册的话就不会和老师有关联关系，也不会和作业有关联关系
		//set设置了反转，这边就不需要维护关系，由多的一方来维护关系
		
		HttpServletRequest request = ServletActionContext.getRequest();
		//取复选框中的值
		String[] values = request.getParameterValues("teachers") ;
		   if(values!=null&&values.length>0) {
		        for(int i= 0 ;i<values.length;i++)
		        System.out.println(values[i]);  
		   }
		
     
		this.studentService.addstu(student,values);
	
		return SUCCESS;
		
	}
	
	//实现 作业的提交
	public  String tijiao(){
		//1.得到学生提交的作业内容
		  //2.将他存到数据库中
			//3.显示在页面上
		HttpServletRequest request = ServletActionContext.getRequest();
		String mytext = request.getParameter("textarea");
		System.out.println(mytext);
		studentService.updatezuoyestate((String) ActionContext.getContext().getSession().get("name"),mytext);
      		
		return SUCCESS;
	}
	
	

	

}
