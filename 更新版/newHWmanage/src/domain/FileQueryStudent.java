package domain;

public class FileQueryStudent {
	/*String name=(String) next[0];
	String state=(String)next[1];
	String text=(String)next[2];*/
	
	String name;
	String state;
//	老师的作业
    String text;
//   我的答案
    String text1;
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
	public String getText1() {
		return text1;
	}
	public void setText1(String text1) {
		this.text1 = text1;
	}
	
	public FileQueryStudent() {
		super();
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public FileQueryStudent(String name, String state, String text, String text1) {
		super();
		this.name = name;
		this.state = state;
		this.text = text;
		this.text1 = text1;
	}
	public FileQueryStudent(String name, String text) {
		super();
		this.name = name;
		this.text = text;
	}
	@Override
	public String toString() {
		return "FileQueryStudent [name=" + name + ", state=" + state
				+ ", text=" + text + ", text1=" + text1 + "]";
	}
	
	
	



}
