package domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Tea entity. @author MyEclipse Persistence Tools
 */

public class Tea implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String password;
	private Set stuTeas = new HashSet(0);
	private Set homeworks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Tea() {
	}

	/** full constructor */
	public Tea(String name, String password, Set stuTeas, Set homeworks) {
		this.name = name;
		this.password = password;
		this.stuTeas = stuTeas;
		this.homeworks = homeworks;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getStuTeas() {
		return this.stuTeas;
	}

	public void setStuTeas(Set stuTeas) {
		this.stuTeas = stuTeas;
	}

	public Set getHomeworks() {
		return this.homeworks;
	}

	public void setHomeworks(Set homeworks) {
		this.homeworks = homeworks;
	}

}