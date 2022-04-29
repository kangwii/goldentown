package org.kwjsp.model;

public class RestDTO {
	private int no;
	private String firstName;
	private String lastName;
	
	//생성자 (매개변수 3개짜리 )
	//클래스명(매개변수){}
	 public RestDTO(int no, String firstName, String lastName){
		 this.no=no;
		 this.firstName=firstName;
		 this.lastName=lastName;
	 }
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastname() {
		return lastName;
	}
	
	public void setLastname(String lastname) {
		this.lastName = lastname;
	}
	
	@Override
	public String toString() {
		return "RestDTO [no=" + no + ", firstName=" + firstName + ", lastname=" + lastName + "]";
	}
	
}
