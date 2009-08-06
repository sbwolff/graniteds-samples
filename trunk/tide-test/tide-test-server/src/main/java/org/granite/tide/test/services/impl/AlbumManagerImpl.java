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
		
		albums.add(new Album(0, "Monkey Business", 2005, new Duration(1,15,0)));
		albums.add(new Album(1, "Pop Life", 2009, new Duration(0,55,0)));
		albums.add(new Album(2, "Black Holes and Revelations", 2008, new Duration(0,45,0)));
		
		return albums;
	}
	
	public int getAlbumsNumber() throws Exception {
		if(1==1) // trick the compiler to avoid compile error
		{
			System.err.println("getAlbumsNumber will now trigger an exception");
			
			throw new Exception("An Exception Occured :-(");
		}
		
		/*
		try
		{
			throw new Exception("An Exception Occured :-(");
		}
		catch(Exception e)
		{
			// Using syserr
			//System.err.println("exception in for getAlbumsNumber");
			
			// Using Log4j
			Logger log = Logger.getLogger(AlbumManagerImpl.class);
			log.error("my Log4j " + e.getMessage());
		}
		*/
		return 0;
	}

}
