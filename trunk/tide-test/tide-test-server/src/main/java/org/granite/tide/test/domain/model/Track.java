package org.granite.tide.test.domain.model;

import java.util.List;

//@Entity
public class Track {
	
	//@Id
	private long id;
	
	private int orderNum;
	
	private String title;
	
	private Duration duration;
	
	private List<Artist> trackArtists;
	
	public Track() {
		super();
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Duration getDuration() {
		return duration;
	}
	public void setDuration(Duration duration) {
		this.duration = duration;
	}	
	public List<Artist> getTrackArtists() {
		return trackArtists;
	}
	public void setTrackArtists(List<Artist> trackArtists) {
		this.trackArtists = trackArtists;
	}
	
}
