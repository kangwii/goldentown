package org.kwjsp.model;

public class MemberDTO {
	//id
	private String id;
	//pw
	private String password;
	//name
	private String name;

	private String writer;
	//gender
	private String gender;

	public String getId() {
		return id;
	}
	

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + "]";
	}
	
}
