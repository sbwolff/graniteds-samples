package org.granite.tide.test.client.controller
{
	import mx.collections.ArrayCollection;
	
	import org.granite.tide.events.TideResultEvent;
	import org.granite.tide.spring.Context;
	import org.granite.tide.spring.Spring;
	import org.granite.tide.test.client.event.LoggedInEvent;
	
	[Name("albumController")]
	[Bindable]
	public class AlbumController
	{
		[In]
		public var albumService:Object;

		
		[In]
        public var albumUI:Object;
		
		[Out]
		public var albums:ArrayCollection;
		
		
			
		public function getAllAlbums():void {
		  albumService.getAllAlbums(getAllAlbumsResult);
		}
		
		private function getAllAlbumsResult(event:TideResultEvent):void {
		  albums = event.result as ArrayCollection;
		  albumUI.albumList.data = albums;
		}
		
		[Observer]
		public function eventHandler(event:LoggedInEvent):void {
		   	getAllAlbums();
		}
	}
					
}
