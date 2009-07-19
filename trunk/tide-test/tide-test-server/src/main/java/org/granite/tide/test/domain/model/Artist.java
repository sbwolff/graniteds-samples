package org.granite.tide.test.domain.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Artist {
	
	@Id
	private long id;
	
	private String name;
	
	private String forName;
	
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
	public String getForName() {
		return forName;
	}
	public void setForName(String forName) {
		this.forName = forName;
	}
	
	

}
