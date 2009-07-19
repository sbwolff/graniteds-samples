package org.granite.tide.test.services;

import java.util.List;

import org.granite.tide.test.domain.model.Album;

public interface AlbumManager {
	
	public Album createAlbum(long id);
	public Album getAlbum(long id);
	public List<Album> getAllAlbums();
	

}
