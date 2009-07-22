package org.granite.tide.test.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;

//@Entity
public class Album {
	
	//@Id
	private long id;
	
	private String name;
	
	private int year;
	
	private Duration duration;
	
	private List<Track> albumTracks;
	
	public Album() {
		super();
	}
			
	public Album(long id, String name, int year, Duration duration) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.duration = duration;
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
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public Duration getDuration() {
		return duration;
	}
	public void setDuration(Duration duration) {
		this.duration = duration;
	}
	
	public List<Track> getAlbumTracks() {
		return albumTracks;
	}
	public void setAlbumTracks(List<Track> albumTracks) {
		this.albumTracks = albumTracks;
	}

}
