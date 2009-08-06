package org.granite.tide.test.client.controller
{
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.logging.Log;
	import mx.logging.targets.TraceTarget;
	
	import org.granite.tide.events.TideFaultEvent;
	import org.granite.tide.events.TideResultEvent;
	import org.granite.tide.events.TideValidatorEvent;
	import org.granite.tide.test.client.event.LoggedInEvent;
	import org.granite.tide.test.client.event.RemoteExceptionEvent;
	import org.granite.tide.test.domain.model.Album;
	import org.granite.tide.validators.InvalidValue;
	
	[Name("albumController")]
	[Bindable]
	public class AlbumController
	{
		[In]
		// The In annotation link identity to the tide context
		public var albumService:Object;

		// Inclusion of Album class in order to get it included in the SWF
		// Check http://www.graniteds.org/confluence/display/DOC/9.+Troubleshooting for more details
		private var album:Album;
        
		[In]
        public var albumUI:Object;
		
		// [Out] annotation allow to use albums = event.result instead of tideContext.albums = event.result 
		[In] [Out]
		public var albums:ArrayCollection;
		
		public function init():void {
            var t:TraceTarget = new TraceTarget();
            t.filters = ["org.granite.*"];
            Log.addTarget(t);            
        }
        
        //--------------------------------------------
			
		public function getAllAlbums():void {
		  albumService.getAllAlbums(getAllAlbumsResult);
		}
		
		public function getAlbum():void {
		  albumService.getAlbum(0,getAlbumResult);
		}
		
		private function getAllAlbumsResult(event:TideResultEvent):void {
		  trace("getAllAlbumsResult");
		  albums = event.result as ArrayCollection;
		}
		
		private function getAlbumResult(event:TideResultEvent):void {
		  trace("getAlbumResult");
		  album = event.result as Album;
		  albumUI.albumLabel.text = album.name;
		}
		
		private function helloResult(event:TideResultEvent):void {
		    Alert.show("everything is ok");
		}
		private function helloFault(event:TideFaultEvent):void {
		    Alert.show("helloFault: " + event.fault.toString());
		}
		
		private function validationHandler(event:TideValidatorEvent):void {
		    var invalidValues:Array = event.invalidValues;
		    for each (var iv:Object in invalidValues) {
		        var invalidValue:InvalidValue = iv as InvalidValue;
		        Alert.show(
		            "Invalid property: " + invalidValue.path +
		            " on object " + invalidValue.bean
		        );
		    }
		}
		
		//--------------------------------------------
		// Using typed events, see : http://www.graniteds.org/confluence/display/DOC20/6.+Flex+3+Client+Framework
		
		[Observer]
		public function eventHandler(event:LoggedInEvent):void {
		   	getAllAlbums();
		}
		
		[Observer]
		public function getRemoteException(event:RemoteExceptionEvent):void {
			trace("Calling service that will trigger an Exception");
		   	albumService.getAlbumsNumber(helloResult, helloFault); // no faultCallback indicated here
		}
	}
					
}
