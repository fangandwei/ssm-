package domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Homework entity. @author MyEclipse Persistence Tools
 */

public class Homework implements java.io.Serializable {

	// Fields

	private Integer id;
	private Tea tea;
	private Stu stu;
	private String hname;
	private String text;
	private Integer state;
	private Set stuHoms = new HashSet(0);

	// Constructors

	/** default constructor */
	public Homework() {
	}

	/** full constructor */
	public Homework(Tea tea, Stu stu, String hname, String text, Integer state,
			Set stuHoms) {
		this.tea = tea;
		this.stu = stu;
		this.hname = hname;
		this.text = text;
		this.state = state;
		this.stuHoms = stuHoms;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Tea getTea() {
		return this.tea;
	}

	public void setTea(Tea tea) {
		this.tea = tea;
	}

	public Stu getStu() {
		return this.stu;
	}

	public void setStu(Stu stu) {
		this.stu = stu;
	}

	public String getHname() {
		return this.hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Set getStuHoms() {
		return this.stuHoms;
	}

	public void setStuHoms(Set stuHoms) {
		this.stuHoms = stuHoms;
	}

}