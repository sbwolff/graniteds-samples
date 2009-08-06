package org.granite.tide.test.domain.model;

//@Entity
public class Artist {

	//@Id
	private long id;
	
	private String name;
	
	public Artist() {
		super();
	}
	
	public Artist(long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
