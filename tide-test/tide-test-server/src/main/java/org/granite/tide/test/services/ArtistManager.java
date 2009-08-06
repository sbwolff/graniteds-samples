package org.granite.tide.test.services;

import java.util.List;

import org.granite.tide.test.domain.model.Artist;

public interface ArtistManager {
		
	public Artist createArtist(String name);
	public Artist getArtist(long id) throws Exception;
	public List<Artist> getAllArtists();
	public Artist saveArtist(long id, String name) throws Exception;
	
}
