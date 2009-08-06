package org.granite.tide.test.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.granite.tide.test.domain.model.Artist;
import org.granite.tide.test.services.ArtistManager;
import org.springframework.stereotype.Service;

@Service("artistService")
public class ArtistManagerImpl implements ArtistManager {
	
	private List<Artist> artistsS = new ArrayList<Artist>();
	
	public ArtistManagerImpl()
	{
		artistsS.add(new Artist(0, "Black Eyed Peas"));
		artistsS.add(new Artist(1, "David Guetta"));
		artistsS.add(new Artist(2, "Muse"));
	}
	
	public Artist createArtist(String name) {
		Artist a = new Artist(artistsS.size(), name);
		artistsS.add(a);
		return a;
	}

	public Artist getArtist(long id) throws Exception {
		int s = artistsS.size();
		Artist a;
		for(int i=0;i<s;i++)
		{
			a = artistsS.get(i);
			if(a.getId() == id)
			{
				return a;
			}
		}
		throw new Exception("Artist not found");
	}

	public List<Artist> getAllArtists() {
		return artistsS;
	}
	
	public Artist saveArtist(long id, String name) throws Exception {
		Artist a = null;
		int s = artistsS.size();
		for(int i=0;i<s;i++)
		{
			a = artistsS.get(i);
			if(a.getId() == id)
			{
				a.setName(name);
				return a;
			}
		}
		if(a == null)
		{
			throw new Exception("Artist not found");
		}
		return a;
	}
}
