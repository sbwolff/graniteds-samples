package org.granite.tide.test.client.controller
{
	import org.granite.tide.test.client.event.LoggedInEvent;
	
	import org.granite.tide.spring.Identity;
	
	[Name("mainController")]
	[Bindable]
	public class MainController {

		[In]
        public var mainAppUI:Object;
        
        [In]
		public var identity:Identity;

		[Observer]
		public function eventHandler(event:LoggedInEvent):void {
		   	this.mainAppUI.bodyStack.selectedIndex = main.ALBUM;
		}
	     
	}
}
