package org.granite.tide.test.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.granite.tide.test.domain.model.Album;
import org.granite.tide.test.domain.model.Duration;
import org.granite.tide.test.services.AlbumManager;
import org.springframework.stereotype.Service;

@Service("albumService")
public class AlbumManagerImpl implements AlbumManager {

	public Album createAlbum(long id) {
		return new Album(0, "tutu", 1982, new Duration(0,0,0));
	}

	public Album getAlbum(long id) {
		return new Album(0, "tete", 1982, new Duration(0,0,0));
	}

	public List<Album> getAllAlbums() {
		List<Album> albums = new ArrayList<Album>();
		albums.add(new Album(0, "titi", 1982, new Duration(0,0,0)));
		albums.add(new Album(1, "toto", 1981, new Duration(0,0,0)));
		albums.add(new Album(2, "tata", 1983, new Duration(0,0,0)));
		return albums;
	}

}
