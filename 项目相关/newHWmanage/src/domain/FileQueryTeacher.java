package domain;

public class FileQueryTeacher {
	String hname;
	String name;
	String text;
    String  state;
    
    
    
	public FileQueryTeacher() {
		super();
	}
	public FileQueryTeacher(String hname, String name, String text, String state) {
		super();
		this.hname = hname;
		this.name = name;
		this.text = text;
		this.state = state;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}  
}
